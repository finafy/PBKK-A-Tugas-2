<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Informasi Lagu</title>
<style>
table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  text-align: centre;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
</head>
<body>
	<div class = "container">
    <h2>Informasi Lagu Sebagai Berikut : </h2>
    <div class = "row">
    <div class = "coloumn">
    <table>
        <tr>
            <td>Judul Lagu :</td>
            <td>${judulLagu}</td>
        </tr>
        <tr>
            <td>Genre :</td>
            <td>${genre}</td>
        </tr>
        <tr>
            <td>Tahun Lagu :</td>
            <td>${tahun}</td>
        </tr>
        <tr>
            <td>Pencipta Lagu :</td>
            <td>${pencipta}</td>
        </tr>
    </table>
    </div>
    </div>
    </div>
</body>
</html>