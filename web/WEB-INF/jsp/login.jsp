<%-- 
    Document   : login
    Created on : Sep 13, 2018, 10:56:06 PM
    Author     : Ody
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/css/nbcss.css"/>"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="view" method="post">
            <center>
                <h2>Login</h2>
            </center>
            <table class="log">
                <tbody>
                    <tr>
                        <td colspan="2" style="text-align: center">${message}</td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" placeholder="Masukkan username"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" placeholder="Masukkan password"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
