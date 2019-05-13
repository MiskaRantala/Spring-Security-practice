<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Custom Login Page</title>
    </head>

    <body>

        <h3>My Custom Login Page</h3>

        <style>
            .failed {
                color: red;
            }
        </style>

        <!-- User's authentication field code -->
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

            <!-- Check for login error -->
            <c:if test="${param.error != null}">

                <i class="failed">Could not log in. Username or password is invalid. </i>

            </c:if>

            <!-- User adds login details here -->
            <p>Username: <input type="text" name="username" /></p>
            <p>Password: <input type="password" name="password" /></p>

            <input type="submit" value="Login" />

        </form:form>
    </body>
</html>