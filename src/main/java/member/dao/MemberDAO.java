package member.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import member.dto.MemberVO;
//import theater_date.dto.Theater_DateVO;
import util.DBManager;

// DAO : Database Access Object (데이터베이스 조작을 한다.) -> SingleTon으로 만듬
public class MemberDAO {
	private MemberDAO() { }
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {	return instance;	}
	public Connection getConnection() throws Exception {	// DBCP
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/movie_reserve");
		conn = ds.getConnection();
		return conn;
	}

	public int userCheck(String mem_id, String mem_pw) {
		int result = -1;
		String sql = "select mem_pw from member where mem_id=?";
		ResultSet rs = null;
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ){
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("mem_pw") != null
						&& rs.getString("mem_pw").equals(mem_pw)) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public MemberVO getMember(int num) {		// 아이디로 회원 정보 가져오는 메소드
		MemberVO mVo = null;
		String sql = "select * from member where num=?";
		ResultSet rs = null;
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {	// 존재하는 사용자
				mVo = new MemberVO();
				mVo.setNum(rs.getInt("num"));
				mVo.setMem_id(rs.getString("mem_id"));
				mVo.setMem_name(rs.getString("mem_name"));
				mVo.setMem_pw(rs.getString("mem_pw"));
				mVo.setMem_email(rs.getString("mem_email"));
				mVo.setMem_phone(rs.getString("mem_phone"));
				mVo.setGrade(rs.getInt("mem_grade"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}
	public MemberVO getMemberByID(String mem_id) {		// 아이디로 회원 정보 가져오는 메소드
		MemberVO mVo = null;
		String sql = "select * from member where mem_id=?";
		ResultSet rs = null;
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {	// 존재하는 사용자
				mVo = new MemberVO();
				mVo.setNum(rs.getInt("num"));
				mVo.setMem_id(rs.getString("mem_id"));
				mVo.setMem_name(rs.getString("mem_name"));
				mVo.setMem_pw(rs.getString("mem_pw"));
				mVo.setMem_email(rs.getString("mem_email"));
				mVo.setMem_phone(rs.getString("mem_phone"));
				mVo.setGrade(rs.getInt("mem_grade"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public int confirmID(String mem_id) {
		int result = -1;
		String sql = "select mem_id from member where mem_id=?";
		ResultSet rs = null;
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if (rs.next())
				result = 1;
			else
				result = -1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int insertMember(MemberVO mVo) {	// 회원정보 추가
		int result = -1;
		String sql = "insert into member(mem_name, mem_id, mem_pw, mem_email, mem_phone, mem_grade) values(?, ?, ?, ?, ?, ?)";
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setString(1, mVo.getMem_name());
			pstmt.setString(2, mVo.getMem_id());
			pstmt.setString(3, mVo.getMem_pw());
			pstmt.setString(4, mVo.getMem_email());
			pstmt.setString(5, mVo.getMem_phone());
			pstmt.setInt(6, mVo.getGrade());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteMember(int num) throws NamingException {
		String sql = "delete from member where num=?";
		int result = -1;
		try (Connection conn = DBManager.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int updateMember(MemberVO mVo) {
		int result = -1;
		String sql = "update member set mem_pw=?, mem_email=?,"
				+ "mem_phone=?, mem_grade=? where mem_id=?";
		try (Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setString(1, mVo.getMem_pw());
			pstmt.setString(2, mVo.getMem_email());
			pstmt.setString(3, mVo.getMem_phone());
			pstmt.setInt(4, mVo.getGrade());
			pstmt.setString(5, mVo.getMem_id());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public List<MemberVO> selectAllMember() {
		String sql = "select * from member order by num";
		List<MemberVO>list = new ArrayList<MemberVO>();
		try(Connection conn = DBManager.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);	){
			while(rs.next()) {	//	모든 열에 대하여 반복 
				MemberVO mVo = getMemberVOFromResultSet(rs);
				list.add(mVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}
	private MemberVO getMemberVOFromResultSet(ResultSet rs) throws SQLException {
		MemberVO mVo = new MemberVO();
		mVo.setNum(rs.getInt("num"));
		mVo.setMem_id(rs.getString("mem_id"));
		mVo.setMem_pw(rs.getString("mem_pw"));
		mVo.setMem_name(rs.getString("mem_name"));
		mVo.setMem_phone(rs.getString("mem_phone"));
		mVo.setMem_email(rs.getString("mem_email"));
		mVo.setGrade(rs.getInt("mem_grade"));
		return mVo;
	}
}
