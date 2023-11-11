/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;

/**
 *
 * @author SHD
 */
public class CategoryDAO extends DBContext{
    public ArrayList<Category> getCategory() {
        ArrayList<Category> proCate = new ArrayList<>();
        try {
            String sql = "select * from [category]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                              
                proCate.add(new Category(rs.getInt(1),rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        return proCate;
    }
}
