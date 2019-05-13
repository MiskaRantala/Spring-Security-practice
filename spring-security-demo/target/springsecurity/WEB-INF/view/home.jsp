<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Trikkaus ry - Home page</title>
    </head>

    <body>
        <h2>Welcome to the homepage! </h2>
        <hr>

        <p>Logged in!</p>

        This is the homepage of Trikkaus ry.

        <!-- Add a logout button -->
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">

            <input type="submit" value="Logout" />

        </form:form>
    </body>
</html>