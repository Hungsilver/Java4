package com.example.common;

public class Validate {
    public Boolean check(String ma, String ten, String tuoi, String gioiTinh, String queQuan) {
        if (ten.trim().length() == 0) {
            return false;
        }
        if (tuoi.trim().length() == 0) {
            return true;
        }

        if (gioiTinh.isEmpty()) {
            return false;
        }
        if (queQuan.trim().length() == 0) {
            return false;
        }

        return true;
    }
}
