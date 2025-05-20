<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Dashboard - Real Estate</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
    }
  </style>
</head>
<body class="bg-gray-100 min-h-screen">

<!-- Sidebar -->
<div class="flex">
  <aside class="w-64 bg-green-700 min-h-screen text-white">
    <div class="p-6 text-2xl font-bold border-b border-green-600">Real Estate Admin</div>
    <nav class="mt-6 space-y-2">
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Dashboard</a>
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Properties</a>
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Users</a>
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Agents</a>
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Messages</a>
      <a href="#" class="block px-6 py-3 hover:bg-green-600">Settings</a>
    </nav>

    <!-- Logout Button -->
    <div class="p-6 border-t border-green-600">
      <a href="logout" class="block px-6 py-3 bg-green-600 text-white text-center rounded hover:bg-green-500 transition">
        Logout
      </a>
    </div>
  </aside>

  <!-- Main Content -->
  <main class="flex-1 p-8">
    <div class="mb-6">
      <h1 class="text-3xl font-bold text-green-700">Dashboard Overview</h1>
      <p class="text-gray-600">Manage listings, users, and insights in one place.</p>
    </div>

    <!-- Summary Cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
      <div class="bg-white p-6 rounded-xl shadow border-l-4 border-green-500">
        <h2 class="text-sm font-medium text-gray-500">Total Listings</h2>
        <p class="text-2xl font-semibold text-green-700">124</p>
      </div>
      <div class="bg-white p-6 rounded-xl shadow border-l-4 border-green-500">
        <h2 class="text-sm font-medium text-gray-500">Active Agents</h2>
        <p class="text-2xl font-semibold text-green-700">27</p>
      </div>
      <div class="bg-white p-6 rounded-xl shadow border-l-4 border-green-500">
        <h2 class="text-sm font-medium text-gray-500">New Users</h2>
        <p class="text-2xl font-semibold text-green-700">56</p>
      </div>
      <div class="bg-white p-6 rounded-xl shadow border-l-4 border-green-500">
        <h2 class="text-sm font-medium text-gray-500">Pending Requests</h2>
        <p class="text-2xl font-semibold text-green-700">9</p>
      </div>
    </div>

    <!-- Recent Activity -->
    <div class="mt-10">
      <h2 class="text-xl font-bold text-green-600 mb-4">Recent Listings</h2>
      <div class="bg-white rounded-lg shadow overflow-hidden">
        <table class="min-w-full text-sm text-gray-700">
          <thead class="bg-green-500 text-white">
          <tr>
            <th class="text-left px-6 py-3">Property</th>
            <th class="text-left px-6 py-3">Location</th>
            <th class="text-left px-6 py-3">Price</th>
            <th class="text-left px-6 py-3">Status</th>
          </tr>
          </thead>
          <tbody>
          <tr class="border-t">
            <td class="px-6 py-4">Sunny Villa</td>
            <td class="px-6 py-4">Los Angeles, CA</td>
            <td class="px-6 py-4">$1.2M</td>
            <td class="px-6 py-4 text-green-600 font-medium">Active</td>
          </tr>
          <tr class="border-t">
            <td class="px-6 py-4">Downtown Apartment</td>
            <td class="px-6 py-4">New York, NY</td>
            <td class="px-6 py-4">$850K</td>
            <td class="px-6 py-4 text-yellow-500 font-medium">Pending</td>
          </tr>
          <tr class="border-t">
            <td class="px-6 py-4">Cozy Cottage</td>
            <td class="px-6 py-4">Austin, TX</td>
            <td class="px-6 py-4">$450K</td>
            <td class="px-6 py-4 text-red-500 font-medium">Inactive</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </main>
</div>
</body>
</html>
