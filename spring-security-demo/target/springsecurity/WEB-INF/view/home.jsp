<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html>
    <head>
        <title>RantalaSoftware - Home page</title>
    </head>

    <body>
        <h2>Welcome to the homepage! </h2>
        <hr>

        <p>Logged in!</p>

        This is the homepage for our company.

        <!-- display username and role -->
        <p>
            User: <security:authentication property="principal.username" />
            <br><br>
            Role(s): <security:authentication property="principal.authorities" />
        </p>

        <hr>

        <!-- Add a link to point to /leaders ... this is for the managers -->
        <p>
            <a href="${pageContext.request.contextPath}/managers">Manager meeting</a>
            (Only for Managers)
        </p>
        <hr>

        <!-- Add a link to point to /admins ... this is for the admins -->
        <p>
            <a href="${pageContext.request.contextPath}/admins">Admins' very important meeting</a>
            (Only for Admins)
        </p>
        <hr>

        <!-- add a logout button -->
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">

            <input type="submit" value="Logout" />

        </form:form>
    </body>
</html>