<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>User Profile</title>
        </head>

        <body>
            <h1>User Profile</h1>
            <c:if test="${not empty user}">
                <p>Username: ${user.username}</p>
                <p>Email: ${user.email}</p>
            </c:if>
            <a href="index.jsp">Back to Registration</a>
        </body>

        </html>