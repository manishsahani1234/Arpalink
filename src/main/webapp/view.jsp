<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Service Details - arpalink</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for service details */
        .service-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        /* Heading Styles */
        h1 {
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* Paragraph Styles */
        p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }

        /* Link Styles */
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .service-container {
                padding: 20px;
                width: 90%;
            }

            h1 {
                font-size: 24px;
            }

            p {
                font-size: 16px;
            }

            a {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="service-container">
        <h1>Service Details</h1>
        <%
            // Retrieve the serviceId from the request parameter
            String serviceId = request.getParameter("serviceId");

            // Define service details based on serviceId
            String serviceName = "";
            String description = "";
            String price = "";

            if (serviceId != null) {
                switch (serviceId) {
                    case "1":
                        serviceName = "Gym & Fitness Center";
                        description = "A state-of-the-art gym with modern equipment, personal trainers, and group classes.";
                        price = "2000/month";
                        break;
                    case "2":
                        serviceName = "Restaurant & Cafe";
                        description = "A cozy restaurant offering a variety of cuisines, from local dishes to international flavors.";
                        price = "250 per person";
                        break;
                    case "3":
                        serviceName = "Hospital & Clinic";
                        description = "A full-service hospital providing emergency care, surgeries, and specialized treatments.";
                        price = "Contact for pricing";
                        break;
                    case "4":
                        serviceName = "Hotel";
                        description = "A luxurious hotel with comfortable rooms, a swimming pool, and excellent customer service.";
                        price = "1500/night";
                        break;
                    case "5":
                        serviceName = "Salon & Spa";
                        description = "Relax and rejuvenate with our spa treatments, haircuts, and beauty services.";
                        price = "3000 per session";
                        break;
                    default:
                        serviceName = "Service Not Found";
                        description = "The requested service does not exist.";
                        price = "N/A";
                        break;
                }
            } else {
                serviceName = "Service Not Found";
                description = "No service ID provided.";
                price = "N/A";
            }
        %>
        <p><strong>Service Name:</strong> <%= serviceName %></p>
        <p><strong>Description:</strong> <%= description %></p>
        <p><strong>Price:</strong> <%= price %></p>
        <a href="contact.jsp?serviceId=<%= serviceId %>">Contact Provider</a>
    </div>
</body>
</html>