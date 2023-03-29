package com.example.service;

import com.example.entity.SinhVien;

import java.util.List;

public interface SinhVienService {
    List<SinhVien> getAll();

    List<SinhVien> getListSearch(String ten);

    SinhVien add(SinhVien sv);

    SinhVien update(SinhVien sv);

    SinhVien delete(SinhVien sv);

    SinhVien getOne(String ma);
}
