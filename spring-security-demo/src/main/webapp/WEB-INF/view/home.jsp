<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Miska Rantala - Home page</title>
    </head>

    <body>
        <h2>Welcome to the homepage! </h2>
        <hr>

        <p>Logged in!</p>

        This is the homepage of Miska Rantala.

        <!-- display username and role -->
        <p>
            User: <security:authentication property="principal.username" />
            <br><br>
            Role(s): <security:authentication property="principal.authorities" />
        </p>

        <!-- add a logout button -->
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">

            <input type="submit" value="Logout" />

        </form:form>
    </body>
</html>