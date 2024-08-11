/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.*;
import model.*;
import java.util.*;

/**
 *
 * @author HUU NGHIA
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProduct() {
        String sql = "select * from product";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setDescription(rs.getString(3));
                p.setImage(rs.getString(4));
                p.setPrice(rs.getDouble(5));
                p.setQuantity(rs.getInt(6));

                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt(7));
                p.setC(c);
                list.add(p);
            }

            return list;

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List getAllProductSize() {
        List list = new ArrayList();

        String sql = "SELECT [size_value]\n"
                + "  FROM [PP].[dbo].[sizes]";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);           
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
        
    }

    public List getProductSizeById(int id) {

        List list = new ArrayList();
        String sql = "select size_value from product_sizes ps \n"
                + "join sizes s on ps.size_id = s.size_id\n"
                + "where product_id =(?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Product> getLatestProduct() {
        String sql = "SELECT TOP (12) [id]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[categoryId]\n"
                + "  FROM [PP].[dbo].[product]\n"
                + "  Order by id desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setDescription(rs.getString(3));
                p.setImage(rs.getString(4));
                p.setPrice(rs.getDouble(5));
                p.setQuantity(rs.getInt(6));

                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt(7));
                p.setC(c);
                list.add(p);
            }

            return list;

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Product getProductById(int id) {
        String sql = "select * from product where id=(?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setDescription(rs.getString(3));
                p.setImage(rs.getString(4));
                p.setPrice(rs.getDouble(5));
                p.setQuantity(rs.getInt(6));

                DAO dao = new DAO();
                Category c = dao.getCategoryById(rs.getInt(7));
                p.setC(c);

                return p;
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }

    public void addProduct(Product p) {
//        String sql = "INSERT INTO [dbo].[product]\n"
//                + "           ([name]\n"
//                + "           ,[description]\n"
//                + "           ,[image]\n"
//                + "           ,[price]\n"
//                + "           ,[quantity]\n"
//                + "           ,[categoryId])\n"
//                + "     VALUES\n"
//                + "           (?),\n"
//                + "           ,(?)\n"
//                + "           ,(?)\n"
//                + "           ,(?)\n"
//                + "           ,(?)\n"
//                + "           ,(?)";

        String sql = "INSERT INTO [dbo].[product] "
                + "([name], [description], [image], [price], [quantity], [categoryId]) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setString(2, p.getDescription());
            st.setString(3, p.getImage());
            st.setDouble(4, p.getPrice());
            st.setInt(5, p.getQuantity());
            Category c = p.getC();
            st.setInt(6, c.getId());
            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void updateProduct(Product p) {
        String sql = "UPDATE [dbo].[product]\n"
                + "   SET [name] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[categoryId] = ?\n"
                + " WHERE id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setString(2, p.getDescription());
            st.setString(3, p.getImage());
            st.setDouble(4, p.getPrice());
            st.setInt(5, p.getQuantity());
            st.setInt(6, p.getC().getId());
            st.setInt(7, p.getId());
            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProductById(int id) {
        String sql = "DELETE FROM [dbo].[product]\n"
                + "      WHERE id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        List p = dao.getProductSizeById(92);
        for (Object object : p) {
            System.out.println(object);
        }
    }

}
