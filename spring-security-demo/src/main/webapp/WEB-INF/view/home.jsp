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

        This is the homepage for our company.
        <hr>

        <!-- display username and role -->
        <p>
            User: <security:authentication property="principal.username" />
            <br><br>
            Role(s): <security:authentication property="principal.authorities" />
        </p>

        <security:authorize access="hasRole('MANAGER')">

            <!-- Add a link to point to /leaders ... Only seen by managers -->
            <p>
                <a href="${pageContext.request.contextPath}/managers">Manager meeting</a>
                (Only for Managers)
            </p>

        </security:authorize>

        <security:authorize access="hasRole('ADMIN')">

            <!-- Add a link to point to /admins ... Only seen by admins -->
            <p>
                <a href="${pageContext.request.contextPath}/admins">Admins' very important meeting</a>
                (Only for Admins)
            </p>

        </security:authorize>
        <hr>

        <!-- add a logout button -->
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">

            <input type="submit" value="Logout" />

        </form:form>
    </body>
</html>