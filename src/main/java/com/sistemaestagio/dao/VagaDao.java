package com.sistemaestagio.dao;

import java.sql.*;
import java.util.*;
import com.sistemaestagio.bean.Vaga;

public class VagaDao {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistemaestagio", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int addVaga(Vaga v) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO vaga (titulo, descricao, empresa, localizacao, tipo) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, v.getTitulo());
            ps.setString(2, v.getDescricao());
            ps.setString(3, v.getEmpresa());
            ps.setString(4, v.getLocalizacao());
            ps.setString(5, v.getTipo());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static List<Vaga> getAllVagas() {
        List<Vaga> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM vaga");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Vaga v = new Vaga();
                v.setId(rs.getInt("id"));
                v.setTitulo(rs.getString("titulo"));
                v.setDescricao(rs.getString("descricao"));
                v.setEmpresa(rs.getString("empresa"));
                v.setLocalizacao(rs.getString("localizacao"));
                v.setTipo(rs.getString("tipo"));
                list.add(v);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}