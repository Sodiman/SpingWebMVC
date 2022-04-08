<%-- 
    Document   : main
    Created on : Sep 13, 2018, 11:10:41 AM
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
        <div id="main">
            <div id="header">
                <div id="widgetBar">
                    <div class="headerWidget">
                        [language toggle]
                    </div>
                    <div class="headerWidget">
                        [market widget]
                    </div>
                </div>
                <h1>Database</h1>
            </div>
            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>[ welcome text ]</p>
                </div>
            </div>
            <div id="indexRightColumn">
                <h4>
                    <a href="add" style="">Create</a>&nbsp;
                    <a href="refresh">Refresh</a>
                </h4>
                <table border="1" class="db">
                    <thead class="db">
                        <tr>
                            <th>ID</th>
                            <th>Nama Pengguna</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Data Registrasi</th>
                            <th>Ubah</th>
                            <th>Hapus</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="emp" items="${list}">
                            <tr>
                                <td>${emp.id}</td>
                                <td>${emp.username}</td>
                                <td>${emp.password}</td>
                                <td>${emp.email}</td>
                                <td>${emp.regdate}</td>
                                <td><a href="edit/${emp.id}">Edit</a></td>
                                <td><a href="delete/${emp.id}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                </center>
            </div>
            <div id="footer">
                <hr>
                <p id="footerText">[ footer text ]</p>
            </div>
        </div>
    </body>
</html>

