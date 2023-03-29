package com.example.repository;

import com.example.entity.SinhVien;
import com.example.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

public class SinhVienRepository {

    public List<SinhVien> getAllSV() {
        List<SinhVien> list;
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            TypedQuery<SinhVien> qr = s.createQuery("from SinhVien", SinhVien.class);
            list = qr.getResultList();
        }
        return list;
    }

    public SinhVien add(SinhVien sv) {
        Transaction trans = null;
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            trans = s.beginTransaction();
            s.persist(sv);
            trans.commit();
            return sv;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        }
    }

    public SinhVien update(SinhVien sv) {
        Transaction trans = null;
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            trans = s.beginTransaction();
            s.merge(sv);
            trans.commit();
            return sv;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        }
    }

    public SinhVien delete(SinhVien sv) {
        Transaction trans = null;
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            trans = s.beginTransaction();
            s.delete(sv);
            trans.commit();
            return sv;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        }
    }

    public SinhVien getOne(String ma) {
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            SinhVien sv;
            Query qr = s.createQuery("select o from SinhVien o where ma=:ma");
            qr.setParameter("ma", ma);
            sv = (SinhVien) qr.getSingleResult();
            return sv;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<SinhVien> getAllSearch(String ten) {
        try (Session s = HibernateUtil.getFACTORY().openSession()) {
            List<SinhVien> list;
            TypedQuery<SinhVien> qr = s.createQuery("select sv from SinhVien sv where sv.ten like :ten", SinhVien.class);
            if (ten.isEmpty()) {
                qr.setParameter("ten", "null");
            } else {
                qr.setParameter("ten", ten + "%");
            }
            list = qr.getResultList();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        SinhVienRepository sv = new SinhVienRepository();

        System.out.println(sv.getOne("63A972E0-09FF-47B9-AC33-04A51884A35C"));
    }

}
