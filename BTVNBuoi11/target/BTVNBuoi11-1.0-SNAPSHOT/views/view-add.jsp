<%--
  Created by IntelliJ IDEA.
  User: hungs
  Date: 3/29/2023
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <form method="post" action="/sinh-vien/add" class="w-50 mt-3">
        <div class="mb-3 row">
            <label for="forMa" class="col-form-label col-sm-2">Mã</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forMa" name="ma" disabled>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="ipTen" class="col-form-label col-sm-2">Tên</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="ipTen" name="ten" >
            </div>
        </div>
        <div class="mb-3 row">
            <label for="forTuoi" class="col-form-label col-sm-2">Tuổi</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forTuoi" name="tuoi" >
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-form-label col-sm-2">Giới Tính: </label>
            <div class="col-sm-10">
                <div class="mb-3 form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="idNu"
                           name="gioiTinh" ${sinhVien.gioiTinh=="false"?"checked":""} value="false">
                    <label class="form-check-label" for="idNu">Nữ</label>
                </div>
                <div class="mb-3 form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="idNam"
                           name="gioiTinh" ${sinhVien.gioiTinh?"checked":""} value="true">
                    <label class="form-check-label" for="idNam">Nam</label>
                </div>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="forCountry" class="col-form-label col-sm-2">Địa Chỉ</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forCountry" name="diaChi" >
            </div>
        </div>
        <button type="submit" class="btn btn-primary">ADD</button>
    </form>
</div>
</body>
</html>
