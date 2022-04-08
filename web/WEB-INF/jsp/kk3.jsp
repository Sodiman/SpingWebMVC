<%-- 
    Document   : kk3
    Created on : Oct 5, 2018, 12:38:23 AM
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
        <table class="bawah">
            <tbody>
                <tr>
                    <td>Dikeluarkan Tanggal</td>
                    <td>:</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Lembar</td>
                    <td>:</td>
                    <td>I</td>
                    <td>Kepala Keluarga</td>
                    <td class="b">Kepala Keluarga</td>
                    <td class="b">KEPALA DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN KEBUMEN</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>II</td>
                    <td>RT</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>III</td>
                    <td>Desa/Kelurahan</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>IV</td>
                    <td>Kecamatan</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="b">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><c:forEach var="emp" items="${daftar}">${emp.kepkel}</c:forEach></td>
                    <td>Nama Petugas</td>
                </tr>
                <tr class="b">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Tanda Tangan/Cap Jempol</td>
                    <td>NIP :</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
