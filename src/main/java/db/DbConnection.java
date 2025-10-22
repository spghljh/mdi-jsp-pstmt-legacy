package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DbConnection {
	private static DbConnection dbcon;
	private static Context ctx;

	private DbConnection() {
	}

	public static DbConnection getInstance() {
		if (dbcon == null) {
			dbcon = new DbConnection();
			try {
				ctx = new InitialContext();
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}
		return dbcon;
	}

	public Connection getDbConn() {
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mdi");
			System.out.println("DataSource: " + ds); // null이면 JNDI 실패
			Connection con = ds.getConnection();
			System.out.println("Connection: " + con); // null이면 DB 연결 실패
			return con;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void dbClose(ResultSet rs, Statement stmt, Connection con) throws SQLException {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
		} finally {
			if (con != null)
				con.close();
		}
	}
}
