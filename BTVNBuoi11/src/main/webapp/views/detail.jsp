<%--
  Created by IntelliJ IDEA.
  User: hungs
  Date: 3/29/2023
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1 class="text-center mt-3 mb-3 text-success">Trang detail</h1>
    <div class="mb-3 row">
        <div class="col-2">
            <h3>Mã:</h3>
            <h3>Tên:</h3>
            <h3>Tuổi:</h3>
            <h3>Giới Tính:</h3>
            <h3>Địa Chỉ:</h3>
        </div>
        <div class="col-10">
            <h3>${sinhVien.ma}</h3>
            <h3>${sinhVien.ten}</h3>
            <h3>${sinhVien.tuoi}</h3>
            <h3>${sinhVien.gioiTinh?"Nam":"Nữ"}</h3>
            <h3>${sinhVien.diaChi}</h3>
        </div>
    </div>
</div>
</body>
</html>
