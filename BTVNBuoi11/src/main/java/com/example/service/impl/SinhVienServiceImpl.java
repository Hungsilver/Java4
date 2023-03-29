package com.example.service.impl;

import com.example.entity.SinhVien;
import com.example.repository.SinhVienRepository;
import com.example.service.SinhVienService;

import java.util.List;

public class SinhVienServiceImpl implements SinhVienService {
    SinhVienRepository svRepo = new SinhVienRepository();


    public List<SinhVien> getAll() {
        return svRepo.getAllSV();
    }

    @Override
    public List<SinhVien> getListSearch(String ten) {
        return svRepo.getAllSearch(ten);
    }

    public SinhVien add(SinhVien sv) {
        return svRepo.add(sv);
    }

    @Override
    public SinhVien update(SinhVien sv) {
        return svRepo.update(sv);
    }

    @Override
    public SinhVien delete(SinhVien sv) {
        return svRepo.delete(sv);
    }

    @Override
    public SinhVien getOne(String ma) {
        return svRepo.getOne(ma);
    }

//    public static void main(String[] args) {
//    }

}
