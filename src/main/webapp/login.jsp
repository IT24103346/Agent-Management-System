<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Trusty Agents</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Toastify CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .gradient-overlay {
            background: linear-gradient(45deg, rgba(20, 83, 45, 0.9), rgba(5, 150, 105, 0.9));
        }
        .btn-primary {
            background-color: #14532d;
        }
        .btn-primary:hover {
            background-color: #166534;
        }
    </style>
</head>
<body class="bg-gray-50">
<div class="min-h-screen flex">
    <!-- Left Side - Image Section -->
    <div class="hidden lg:flex lg:w-1/2 relative">
        <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
             class="w-full h-full object-cover" alt="Modern House">
        <div class="absolute inset-0 gradient-overlay"></div>
        <div class="absolute inset-0 flex flex-col justify-center px-12 text-white">
            <h1 class="text-4xl font-bold mb-4">Welcome to Trusty Agents</h1>
            <p class="text-lg mb-8">Connecting home buyers and sellers with trusted local agents</p>
            <div class="space-y-4">
                <div class="flex items-center">
                    <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                    </svg>
                    <span>Verified local real estate professionals</span>
                </div>
                <div class="flex items-center">
                    <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                    </svg>
                    <span>Schedule in-person or virtual appointments</span>
                </div>
                <div class="flex items-center">
                    <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                    </svg>
                    <span>Get matched based on your specific needs</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Right Side - Sign Up Form -->
    <div class="w-full lg:w-1/2 flex items-center justify-center px-4 sm:px-6 lg:px-8">
        <div class="max-w-md w-full space-y-8">
            <div class="text-center">
                <img src="https://via.placeholder.com/200x60?text=Trusty+Agents&color=14532d" alt="Trusty Agents Logo" class="mx-auto h-16 w-auto">
                <h2 class="mt-6 text-3xl font-extrabold text-gray-900">
                    Create Your Account
                </h2>
                <p class="mt-2 text-sm text-gray-600">
                    Join our network to find or become a trusted real estate agent
                </p>
            </div>

            <form class="mt-8 space-y-6" action="login" method="POST">

                <div class="space-y-4">
                    <div>
                        <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
                        <div class="mt-1 relative">
                            <input id="email" name="email" type="email" autocomplete="email" required
                                   class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                   placeholder="Enter your email">
                        </div>
                    </div>

                    <div>
                        <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                        <div class="mt-1 relative">
                            <input id="password" name="password" type="password" autocomplete="current-password" required
                                   class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                   placeholder="Enter your password">
                        </div>
                    </div>
                </div>

                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                        <input id="remember-me" name="remember-me" type="checkbox"
                               class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                        <label for="remember-me" class="ml-2 block text-sm text-gray-900">
                            Remember me
                        </label>
                    </div>

                    <div class="text-sm">
                        <a href="forgot-password.jsp" class="font-medium text-green-700 hover:text-green-600">
                            Forgot your password?
                        </a>
                    </div>
                </div>

                <div>
                    <button type="submit"
                            class="group relative w-full flex justify-center py-3 px-4 border border-transparent text-sm font-medium rounded-lg text-white btn-primary hover:bg-green-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-600 transition duration-150 ease-in-out">
                        Sign in
                    </button>
                </div>
            </form>

            <div class="text-center">
                <p class="text-sm text-gray-600">
                    Don't have an account?
                    <a href="signup.jsp" class="font-medium text-green-700 hover:text-green-600">
                        Sign up
                    </a>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- Hidden fields for server messages -->
<input type="hidden" id="successMessage" value="${successMessage}" />
<input type="hidden" id="errorMessage" value="${errorMessage}" />
<input type="hidden" id="infoMessage" value="${infoMessage}" />
<input type="hidden" id="warningMessage" value="${warningMessage}"

<% if(request.getAttribute("errorMessage") != null) { %>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        showErrorToast('<%= request.getAttribute("errorMessage") %>');
    });
</script>
<% } %>

<!-- Toastify JS -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Custom toast utilities -->
<script src="assets/js/toast-utils.js"></script>

<script>
    // Form validation
    document.addEventListener('DOMContentLoaded', function() {
        const loginForm = document.querySelector('form');

        loginForm.addEventListener('submit', function(event) {
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            let isValid = true;

            console.log('Login form submission - Email:', email, 'Password:', password);

            if (!email) {
                showErrorToast('Email is required');
                isValid = false;
            } else if (!isValidEmail(email)) {
                showErrorToast('Please enter a valid email address');
                isValid = false;
            }

            if (!password) {
                showErrorToast('Password is required');
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault();
            } else {
                console.log('Form is valid, submitting...');
            }
        });

        // Simple email validation
        function isValidEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
    });
</script>

</body>
</html>