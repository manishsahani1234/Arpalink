<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to arpalink</title>
    <style>
        /* General Styles */
        body {
            background-color: #f2f2f2;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        /* Headings and Paragraphs */
        h1 {
            color: #333;
            font-size: 36px;
            margin-top: 50px;
            animation: fadeIn 1s ease-in-out;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            color: #666;
            margin: 20px 0;
        }

        /* Navigation Styles */
        nav {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        nav a {
            display: inline-block;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #0056b3;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            nav {
                flex-wrap: wrap;
            }

            nav a {
                width: 100%;
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to arpalink</h1>
    <p>Your local service provider for everything you need.</p>
    <nav>
        <a href="services.jsp">Browse Services</a>
        <a href="login.jsp">Login</a>
    </nav>
</div>
</body>
</html>