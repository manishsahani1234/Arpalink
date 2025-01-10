<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <head>
        <title>Register as a Service Provider - arpalink</title>
    </head>

    <body>
        <h1>Register as a Service Provider</h1>
        <form action="registerProvider" method="post">
            <label for="providerName">Provider Name:</label>
            <input type="text" id="providerName" name="providerName" required><br>

            <label for="serviceType">Service Type:</label>
            <input type="text" id="serviceType" name="serviceType" required><br>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required><br>

            <label for="contact">Contact Information:</label>
            <input type="text" id="contact" name="contact" required><br>

            <input type="submit" value="Register">
        </form>
    </body>

    </html>