/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.List;
import model.Category;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author HUU NGHIA
 */
public class DAO extends DBContext {

    public List<Category> getAllCategory() {
        String sql = "select*from category";
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Category c = new Category(rs.getInt("id"), rs.getString("cname"));
                list.add(c);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public Category getCategoryById(int id) {
        String sql = "select*from category where id=(?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Category c = new Category(rs.getInt("id"), rs.getString("cname"));
                return c;
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }

    public void addCategory(String cname) {
        String sql = "INSERT INTO [dbo].[category]\n"
                + "           ([cname])\n"
                + "     VALUES (?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cname);
            st.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void deleteCategory(int cateId) {
        String sql = "delete from category where id =(?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cateId);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void updateCategory(int cateId, String cname) {
        String sql = "UPDATE [dbo].[category]\n"
                + "   SET [cname] = (?)\n"
                + " WHERE [id] = (?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cname);
            st.setInt(2, cateId);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

    }
    
    

    public static void main(String[] args) {
        DAO dao = new DAO();

        Category c = dao.getCategoryById(11);

        System.out.println(c.getCname());
    }

}
