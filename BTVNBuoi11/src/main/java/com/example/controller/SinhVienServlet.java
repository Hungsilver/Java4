package com.example.controller;

import com.example.entity.SinhVien;
import com.example.service.SinhVienService;
import com.example.service.impl.SinhVienServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SinhVienServlet", value =
        {
                "/sinh-vien/hien-thi",
                "/sinh-vien/add",
                "/sinh-vien/view-add",
                "/sinh-vien/update",
                "/sinh-vien/view-update",
                "/sinh-vien/delete",
                "/sinh-vien/search",
                "/sinh-vien/remove",
                "/sinh-vien/detail"
        }
)
public class SinhVienServlet extends HttpServlet {
    SinhVienService service = new SinhVienServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("/sinh-vien/hien-thi")) {
            this.hienThi(request, response);
        } else if (uri.contains("/sinh-vien/view-update")) {
            this.viewUpdate(request, response);
        } else if (uri.contains("/sinh-vien/view-add")) {
            this.viewAdd(request, response);
        } else if (uri.contains("/sinh-vien/remove")) {
            this.remove(request, response);
        } else if (uri.contains("/sinh-vien/search")) {
            this.search(request, response);
        } else if (uri.contains("/sinh-vien/detail")) {
            this.detail(request, response);
        } else {
            this.hienThi(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("/sinh-vien/add")) {
            this.add(request, response);
        } else if (uri.contains("/sinh-vien/update")) {
            this.update(request, response);
        } else {
            this.hienThi(request, response);
        }
    }

    private void viewAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/view-add.jsp").forward(request, response);
    }

    private void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ma = request.getParameter("ma");
        SinhVien sv = service.getOne(ma);
        request.setAttribute("sinhVien", sv);
        request.getRequestDispatcher("/views/detail.jsp").forward(request, response);

    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSearch;
        tenSearch = request.getParameter("tenSearch");
        List<SinhVien> list;
        list = service.getListSearch(tenSearch);
        request.setAttribute("listSV", list);
        request.getRequestDispatcher("/views/trang-chu.jsp").forward(request, response);
    }

    private void remove(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String ma = request.getParameter("ma");
        SinhVien gv = service.getOne(ma);
        System.out.println(gv);
        service.delete(gv);
        response.sendRedirect("/sinh-vien/hien-thi");
    }

    private void viewUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ma = request.getParameter("ma");
        SinhVien gv = service.getOne(ma);
        request.setAttribute("sinhVien", gv);
        request.getRequestDispatcher("/views/view-update.jsp").forward(request, response);
    }

    private void hienThi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SinhVien> list = service.getAll();
        request.setAttribute("listSV", list);
        System.out.println("RUn hieern thi");
        request.getRequestDispatcher("/views/trang-chu.jsp").forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String ma = request.getParameter("ma");
        String ten = request.getParameter("ten");
        Long tuoi = Long.parseLong(request.getParameter("tuoi"));
        Boolean gioiTinh = Boolean.parseBoolean(request.getParameter("gioiTinh"));
        String diaChi = request.getParameter("diaChi");
        SinhVien gv = new SinhVien(ma, ten, tuoi, gioiTinh, diaChi);
        service.update(gv);
        response.sendRedirect("/sinh-vien/hien-thi");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String ma = request.getParameter("ma");
        String ten = request.getParameter("ten");
        String tuoi = request.getParameter("tuoi");
        String gioiTinh = request.getParameter("gioiTinh");
        String diaChi = request.getParameter("diaChi");

        SinhVien dv = new SinhVien(ma, ten, Long.parseLong(tuoi), Boolean.parseBoolean(gioiTinh), diaChi);
        service.add(dv);
        response.sendRedirect("/sinh-vien/hien-thi");
    }
}
