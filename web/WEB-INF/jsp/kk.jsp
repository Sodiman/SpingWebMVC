<%-- 
    Document   : kk
    Created on : Sep 23, 2018, 7:49:03 PM
    Author     : Ody
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/css/kk.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/css/hedfoot.css"/>" />
        <title>JSP Page</title>
    </head>
    <body>
        <form action="kartukeluarga" method="post">
            <div id="wrapper">
<!--                <div id="header">
                    <a href="view" class="title">Develop by Ody</a>
                </div>-->
                <div id="content">
                    <table class="atas">
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><h1 style="text-align: center">KARTU KELUARGA</h1></td>
                                <td>No. </td>
                                <td>:</td>
                                <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><h2 style="text-align: center">No. <input type="text" name="nokk" value="<c:forEach var="emp" items="${daftar}">${emp.nokk}</c:forEach>" placeholder="Input Nomor KK"/></h2></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Nama Kepala Keluarga</td>
                                    <td>:</td>
                                    <td><c:forEach var="emp" items="${daftar}"><input type="text" name="kepkel" value="${emp.kepkel}" /></c:forEach></td>
                                    <td  style="text-align: center"><input type="submit" value="Submit" /></td>
                                    <td>Kecamatan</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.kecamatan}</c:forEach></td>
                                </tr>
                                <tr>
                                    <td>Alamat</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.alamat}</c:forEach></td>
                                    <td></td>
                                    <td>Kabupaten/Kota</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.kabupaten}</c:forEach></td>
                                </tr>
                                <tr>
                                    <td>RT/RW</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.rt}/${emp.rw}</c:forEach></td>
                                    <td></td>
                                    <td>Kode Pos</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">${emp.kodepos}</c:forEach></td>
                                </tr>
                                <tr>
                                    <td>Desa/Kelurahan</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.desa}</c:forEach></td>
                                    <td></td>
                                    <td>Provinsi</td>
                                    <td>:</td>
                                    <td>
                                    <c:forEach var="emp" items="${daftar}">
                                        ${emp.provinsi}</c:forEach></td>
                                </tr>
                            </tbody>
                        </table>
                    <jsp:include page="kk2.jsp"/>
                    <jsp:include page="kk3.jsp"/>
                </div>
<!--                <div id="footer"></div>-->
            </div>
        </form>
    </body>
</html>
