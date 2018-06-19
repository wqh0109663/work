package com.hp.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * JDBC�����ࣨ�����࣬����JDBC�Ĺ���������
 *
 * @author Administrator
 */
public class DBHelper {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/fooddb?characterEncoding=utf-8";
    private static final String USER = "root";
    private static final String PWD = "Wuqihuan19950903";

    /**
     * �������
     *
     * @return
     */
    public static Connection getConn() {
        Connection conn = null;
        try {
            //��������
            Class.forName(DRIVER);
            //�������������Ļ����ϻ������
            conn = DriverManager.getConnection(URL, USER, PWD);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * �ر�����
     *
     * @param conn
     */
    public static void closeConn(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
    }

    /**
     * ����SQL����в�����ֵ
     *
     * @param ps
     * @param values
     */
    public static void setParam(PreparedStatement ps, Object... values) {
        //�ж�SQL������Ƿ��в�
        if (values != null && values.length > 0) {
            //ѭ�����ò�����ֵ
            for (int i = 0; i < values.length; i++) {
                try {
                    ps.setObject(i + 1, values[i]);
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * ִ���� ɾ ��
     *
     * @param conn
     * @param sql
     * @param values
     * @return
     */
    public static int executeUpdate(Connection conn, String sql, Object... values) {
        int count = 0;
        try {
            //��дSQL���
            PreparedStatement ps = conn.prepareStatement(sql);
            //���ò�����ֵ
            setParam(ps, values);
            //ִ��SQL���
            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    /**
     * ִ�в�ѯ
     *
     * @param conn
     * @param sql
     * @param values
     * @return
     */
    public static ResultSet executeQuery(Connection conn, String sql, Object... values) {
        ResultSet rs = null;
        try {
            //��дSQL���
            PreparedStatement ps = conn.prepareStatement(sql);
            //���ò�����ֵ
            setParam(ps, values);
            //ִ��SQL���
            rs = ps.executeQuery();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rs;
    }
}
