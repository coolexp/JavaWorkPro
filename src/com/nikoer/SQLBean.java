package com.nikoer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLBean {
	/**
	 * ȡ��һ�����ݿ�����
	 * 
	 * @return
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws ClassNotFoundException
	 */
	public Connection getConnection() throws SQLException,
			InstantiationException, IllegalAccessException,
			ClassNotFoundException {
		Connection conn = null;
		// �������ݿ�������
		/**
		 * ����SqlServer�����Σ�
		 * Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver"
		 * ).newInstance();
		 */
		Class.forName("com.mysql.jdbc.Driver");
		// ���ݿ�����URL
		/**
		 * ����SqlServer�����Σ�
		 * 
		 * String url =
		 * "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=Northwind";
		 */
		String url = "jdbc:mysql://localhost:3306/test";
		// ���ݿ��û���
		String user = "pma";
		// ���ݿ�����
		String password = "";
		// �������ݿ����ȡ��һ�����ݿ�����
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}

	/**
	 * ���ݴ����SQL��䷵��һ�������
	 * 
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	public ResultSet select(String sql) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			return rs;
		} catch (SQLException sqle) {
			throw new SQLException("select data exception: "
					+ sqle.getMessage());
		} catch (Exception e) {
			throw new Exception("System e exception: " + e.getMessage());
		}

	}

	/**
	 * ���ݴ����SQL��������ݿ�����һ����¼
	 * 
	 * @param sql
	 * @throws Exception
	 */
	public void insert(String sql) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("insert data exception: " + sqle.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
				throw new Exception("ps close exception: " + e.getMessage());
			}
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			throw new Exception("connection close exception: " + e.getMessage());
		}
	}

	/**
	 * ���ݴ����SQL���������ݿ��¼
	 * 
	 * @param sql
	 * @throws Exception
	 */
	public void update(String sql) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("update exception: " + sqle.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
				throw new Exception("ps close exception: " + e.getMessage());
			}
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			throw new Exception("connection close exception: " + e.getMessage());
		}
	}

	/**
	 * ���ݴ����SQL���ɾ��һ�����ݿ��¼
	 * 
	 * @param sql
	 * @throws Exception
	 */
	public void delete(String sql) throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("delete data exception: " + sqle.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
				throw new Exception("ps close exception: " + e.getMessage());
			}
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			throw new Exception("connection close exception: " + e.getMessage());
		}
	}
}
