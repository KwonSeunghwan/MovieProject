package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() throws NamingException, SQLException {
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("/jdbc/movie_reserve");
		return ds.getConnection();
	}
	
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			// 역순으로
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		} catch(Exception e) { }
	}
	
	public static void close(PreparedStatement pstmt, ResultSet rs) {
		try {
			// 역순으로
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
		} catch(Exception e) { }
	}
	
	public static void close(ResultSet rs) {
		try {
			// 역순으로
			if(rs != null)
				rs.close();
		} catch(Exception e) { }
	}
}
