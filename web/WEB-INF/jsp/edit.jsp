<%-- 
    Document   : edit
    Created on : Sep 15, 2018, 12:45:26 PM
    Author     : Ody
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="gold">
        <h2>Edit DataBase</h2>
        <form:form method="POST" action="/Mbaleni/editsave">
            <table>
                <tbody>
                    <tr>
                        <td></td>
                        <td><form:hidden path="id"/></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><form:input path="username"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><form:input path="password"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><form:input path="email"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form:form>
    </body>
</html>
