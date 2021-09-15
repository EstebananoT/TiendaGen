package com.mycompany.tiendagen;




import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author julis
 */
public class validarLog {
    public static void validar(){
            String login = "root";
            String password = "9907";
            String url = "jdbc:mysql://localhost:3306/tienda_generica";
            try{
                Class.forName("com.mysql.jdbc.Driver");

                Connection miConexion = DriverManager.getConnection(url,login,password);
              
                if (miConexion != null)
                {
                    out.println("Conexión a base de datos "+url+" ... Ok");
                    miConexion.close();
                }
            }catch(SQLException ex){
                out.println(ex);
                ex.printStackTrace();
            }catch(ClassNotFoundException ex)
            {
                out.println(ex);
            }
    }
}
