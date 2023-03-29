<%--
  Created by IntelliJ IDEA.
  User: hungs
  Date: 3/26/2023
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <%--    form Search--%>
    <h3 class="text-center mt-3">Trang Chủ</h3>
    <form method="get" action="/sinh-vien/search" class="row w-50 mt-3">
        <div class="col-9">
            <div class="row">
                <label for="forTenSearch" class="col-form-label col-sm-2">Tên</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="forTenSearch" name="tenSearch">
                </div>
            </div>
        </div>
        <div class="col-3">
            <button type="submit" class="btn btn-warning">Search</button>
        </div>
    </form>
    <a class="btn btn-outline-info btn-sm" href="/sinh-vien/view-add">Add Student</a>
    <hr>

    <br>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Mã</th>
            <th scope="col">Tên</th>
            <th scope="col">Tuổi</th>
            <th scope="col">Giới Tính</th>
            <th scope="col">Địa Chỉ</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listSV}" var="sinhVien" varStatus="i">
            <tr>
                <td>${i.index+1}</td>
                <td>${sinhVien.ma}</td>
                <td>${sinhVien.ten}</td>
                <td>${sinhVien.tuoi}</td>
                <td>${sinhVien.gioiTinh?"Nam":"Nữ"}</td>
                <td>${sinhVien.diaChi}</td>
                <td>
                    <a class="btn btn-outline-info btn-sm" href="/sinh-vien/detail?ma=${sinhVien.ma}">Detail</a>
                    <a class="btn btn-outline-info btn-sm" href="/sinh-vien/remove?ma=${sinhVien.ma}">Delete</a>
                    <a class="btn btn-outline-info btn-sm" href="/sinh-vien/view-update?ma=${sinhVien.ma}">Update</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
