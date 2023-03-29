<%--
  Created by IntelliJ IDEA.
  User: hungs
  Date: 3/26/2023
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">


    <form method="post" action="/sinh-vien/update" class="w-50 mt-5">
        <div class="mb-3 row">
            <label for="forMa" class="col-form-label col-sm-2">Mã GV</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forMa" name="ma"  value="${sinhVien.ma}">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="ipTen" class="col-form-label col-sm-2">Tên</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="ipTen" name="ten" value="${sinhVien.ten}">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="forTuoi" class="col-form-label col-sm-2">Tuổi</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forTuoi" name="tuoi" value="${sinhVien.tuoi}">
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
                           name="gioiTinh" ${sinhVien.gioiTinh?"checked":""}  value="true">
                    <label class="form-check-label" for="idNam">Nam</label>
                </div>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="forCountry" class="col-form-label col-sm-2">Địa Chỉ</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="forCountry" name="diaChi" value="${sinhVien.diaChi}">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
