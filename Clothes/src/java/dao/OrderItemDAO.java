/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Order;
import model.OrderItem;

/**
 *
 * @author SHD
 */
public class OrderItemDAO extends DBContext{

    public void insertOrderItem(OrderItem orderItem) {
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO [dbo].[OrderItem]\n"
                    + "           ([order_id]\n"
                    + "           ,[stock]\n"
                    + "           ,[product_id]\n"
                    + "           ,[product_image]\n"
                    + "           ,[product_name]\n"
                    + "           ,[product_price]\n"
                    + "           ,[product_quantity])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)");
            ps.setInt(1, orderItem.getOrder_id());
            ps.setInt(2, orderItem.getStock());
            ps.setInt(3, orderItem.getProduct().getId());
            ps.setString(4, orderItem.getProduct().getImage());
            ps.setString(5, orderItem.getProduct().getName());
            ps.setDouble(6, orderItem.getProduct().getSale_price());
            ps.setInt(7, orderItem.getProduct().getQuantity());
            ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        
    }
}
