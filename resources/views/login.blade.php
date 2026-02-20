<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login S3</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-screen flex">

    <!-- Lado izquierdo -->
    <div class="w-1/2 flex flex-col justify-center px-24">
        <h1 class="text-4xl font-light text-indigo-900 mb-10">Iniciar Sesión</h1>

        @if(session('error'))
            <div class="mb-4 text-red-500">{{ session('error') }}</div>
        @endif

        <form method="POST" action="{{ route('login.post') }}" class="space-y-4">
            @csrf

            <input type="email" name="email" placeholder="Email"
                class="w-full border border-gray-200 rounded-lg px-4 py-3 focus:outline-none">

            <input type="password" name="password" placeholder="Contraseña"
                class="w-full border border-gray-200 rounded-lg px-4 py-3 focus:outline-none">

            <div class="flex items-center space-x-4">
                <button class="bg-indigo-500 text-white px-6 py-3 rounded-lg">
                    Iniciar Sesión
                </button>

                <a href="#" class="text-indigo-400 text-sm">He olvidado mi contraseña</a>
            </div>
        </form>

        <a href="#" class="mt-20 text-indigo-400 text-sm">Cerrar sesión</a>
    </div>

    <!-- Lado derecho degradado -->
    <div class="w-1/2 bg-gradient-to-br from-white to-indigo-100"></div>

    @if(isset($users))
<div class="mt-10">
    <h2 class="text-2xl mb-4">Usuarios registrados</h2>

    <table class="table-auto w-full border">
        <thead class="bg-gray-200">
            <tr>
                <th class="px-4 py-2">ID</th>
                <th class="px-4 py-2">Nombre</th>
                <th class="px-4 py-2">Email</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $u)
            <tr class="border-t">
                <td class="px-4 py-2">{{ $u->id }}</td>
                <td class="px-4 py-2">{{ $u->name }}</td>
                <td class="px-4 py-2">{{ $u->email }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endif


</body>
</html>
