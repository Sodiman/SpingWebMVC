<%-- 
    Document   : kk2
    Created on : Sep 24, 2018, 12:56:41 PM
    Author     : Ody
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" class="bawah">
            <tr>
                <th class="b">No</th>
                <th class="b">Nama Lengkap</th>
                <th class="b">NIK</th>
                <th class="b">Jenis Kelamin</th>
                <th class="b">Tempat Lahir</th>
                <th class="b">Tanggal Lahir</th>
                <th class="b">Agama</th>
                <th class="b">Pendidikan</th>
                <th class="b">Jenis Pekerjaan</th>
            </tr>
            <tr>
                <th></th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
            </tr>
            <c:forEach var="emp" items="${daft}">
                <tr>
                    <td width="10px" style="text-align: center">${emp.id}</td>
                    <td>${emp.nama}</td>
                    <td>${emp.nik}</td>
                    <td class="b">${emp.gen}</td>
                    <td>${emp.tmplr}</td>
                    <td>${emp.tanggallahir}</td>
                    <td>${emp.agama}</td>
                    <td>${emp.pendidikan}</td>
                    <td>${emp.pekerjaan}</td>
                </tr>
            </c:forEach>
        </table>
        <table border="1" class="bawah">
            <tr>
                <th rowspan="2" class="b">No</th>
                <th rowspan="2" class="b">Ststus Perkawinan</th>
                <th rowspan="2" class="b">Status Dalam Keluarga</th>
                <th rowspan="2" class="b">Kewarganegaraan</th>
                <th colspan="2">Dokumen Imigrasi</th>
                <th colspan="2">Nama Orang Tua</th>
            </tr>
            <tr>
                <th class="b">No. Paspor</th>
                <th class="b">No. KITAS/KITAP</th>
                <th class="b">Ayah</th>
                <th class="b">Ibu</th>
            </tr>
            <tr>
                <th></th>
                <th>9</th>
                <th>10</th>
                <th>11</th>
                <th>12</th>
                <th>13</th>
                <th>14</th>
                <th>15</th>
            </tr>
            <c:forEach var="emp" items="${daft}">
                <tr>
                    <td width="10px" style="text-align: center">${emp.id}</td>
                    <td>${emp.status}</td>
                    <td>${emp.statushubungan}</td>
                    <td>${emp.kewarganegaraan}</td>
                    <td>${emp.paspor}</td>
                    <td>${emp.kitaskitap}</td>
                    <td>${emp.ayah}</td>
                    <td>${emp.ibu}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
