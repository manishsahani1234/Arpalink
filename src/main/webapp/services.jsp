<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Available Services - arpalink</title>
    <!-- Include FontAwesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

        /* Heading Styles */
        h1 {
            color: #333;
            font-size: 36px;
            margin-top: 50px;
            animation: fadeIn 1s ease-in-out;
        }

        /* List Styles */
        ul {
            list-style: none;
            padding: 0;
            display: grid;
            gap: 60px;
            margin: 0 auto;
            grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
        }

        li {
            position: relative;
        }

        /* Link and Icon Styles */
        a {
            display: inline-block;
            text-decoration: none;
        }

        a i {
            display: block;
            font-size: 78px;
            color: #007BFF;
            transition: color 0.3s ease;
        }

        a span {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            pointer-events: none;
        }

        a:hover i {
            color: #0056b3;
        }

        a:hover span {
            display: block;
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            ul {
                grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
            }
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 28px;
            }
            a i {
                font-size: 36px;
            }
            a span {
                font-size: 12px;
            }
            ul {
                grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Available Services</h1>
        <ul>
            <!-- Service 1: Gym & Fitness Center -->
            <li>
                <a href="view.jsp?serviceId=1" aria-label="Gym & Fitness Center">
                    <i class="fas fa-dumbbell"></i>
                    <span>Gym & Fitness Center</span>
                </a>
            </li>
            <!-- Service 2: Restaurant & Cafe -->
            <li>
                <a href="view.jsp?serviceId=2" aria-label="Restaurant & Cafe">
                    <i class="fas fa-utensils"></i>
                    <span>Restaurant & Cafe</span>
                </a>
            </li>
            <!-- Service 3: Hospital & Clinic -->
            <li>
                <a href="view.jsp?serviceId=3" aria-label="Hospital & Clinic">
                    <i class="fas fa-hospital"></i>
                    <span>Hospital & Clinic</span>
                </a>
            </li>
            <!-- Service 4: Hotel -->
            <li>
                <a href="view.jsp?serviceId=4" aria-label="Hotel">
                    <i class="fas fa-hotel"></i>
                    <span>Hotel</span>
                </a>
            </li>
            <!-- Service 5: Salon & Spa -->
            <li>
                <a href="view.jsp?serviceId=5" aria-label="Salon & Spa">
                    <i class="fas fa-spa"></i>
                    <span>Salon & Spa</span>
                </a>
            </li>
            <!-- Service 6: Grocery Store -->
            <li>
                <a href="view.jsp?serviceId=6" aria-label="Grocery Store">
                    <i class="fas fa-shopping-basket"></i>
                    <span>Grocery Store</span>
                </a>
            </li>
            <!-- Service 7: Plumbing & Electrical Services -->
            <li>
                <a href="view.jsp?serviceId=7" aria-label="Plumbing & Electrical Services">
                    <i class="fas fa-wrench"></i>
                    <span>Plumbing & Electrical Services</span>
                </a>
            </li>
            <!-- Service 8: Public Transportation -->
            <li>
                <a href="view.jsp?serviceId=8" aria-label="Public Transportation">
                    <i class="fas fa-bus"></i>
                    <span>Public Transportation</span>
                </a>
            </li>
            <!-- Service 9: Schools & Education Centers -->
            <li>
                <a href="view.jsp?serviceId=9" aria-label="Schools & Education Centers">
                    <i class="fas fa-school"></i>
                    <span>Schools & Education Centers</span>
                </a>
            </li>
            <!-- Service 10: Parks & Recreational Facilities -->
            <li>
                <a href="view.jsp?serviceId=10" aria-label="Parks & Recreational Facilities">
                    <i class="fas fa-golf-ball"></i>
                    <span>Parks & Recreational Facilities</span>
                </a>
            </li>
            <!-- Service 11: Post Office -->
            <li>
                <a href="view.jsp?serviceId=11" aria-label="Post Office">
                    <i class="fas fa-mail-bulk"></i>
                    <span>Post Office</span>
                </a>
            </li>
            <!-- Service 12: Banks & ATMs -->
            <li>
                <a href="view.jsp?serviceId=12" aria-label="Banks & ATMs">
                    <i class="fas fa-university"></i>
                    <span>Banks & ATMs</span>
                </a>
            </li>
            <!-- Service 13: Pharmacies -->
            <li>
                <a href="view.jsp?serviceId=13" aria-label="Pharmacies">
                    <i class="fas fa-pharmacy"></i>
                    <span>Pharmacies</span>
                </a>
            </li>
            <!-- Service 14: Laundromat -->
            <li>
                <a href="view.jsp?serviceId=14" aria-label="Laundromat">
                    <i class="fas fa-laundry"></i>
                    <span>Laundromat</span>
                </a>
            </li>
        </ul>
    </div>
</body>
</html>