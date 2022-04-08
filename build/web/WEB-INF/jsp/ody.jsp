<%-- 
    Document   : ody
    Created on : Sep 14, 2018, 12:19:15 AM
    Author     : Ody
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/css/hedfoot.css"/>" />
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header"><a href="view" class="title">Develop by Ody</a>
                <ul class="dropmenu">
                    <li><a href="">Admin</a>
                        <ul>
                            <li><a href="koperasi">Koperasi</a></li>
                            <li><a href="kartukeluarga">KK</a></li>
                        </ul>
                    </li>
                    <li><a href="#2">Menu 2</a>
                        <ul>
                            <li><a href="#21">Sub Menu 1</a></li>
                            <li><a href="#22">Sub Menu 2</a></li>
                            <li><a href="#23">Sub Menu 3</a></li>
                            <li><a href="#24">Sub Menu 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#3">Menu 3</a>
                        <ul>
                            <li><a href="#31">Sub Menu 1</a></li>
                            <li><a href="#32">Sub Menu 2</a></li>
                            <li><a href="#33">Sub Menu 3</a></li>
                            <li><a href="#34">Sub Menu 4</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div id="content">
                <div class="contentainer">
                    <div class="box">
                        <center>
                            <image width="75%" src="<c:url value="/resources/gambar/Chrysanthemum.jpg"/>" />
                        </center>
                    </div>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </body>
</html>
