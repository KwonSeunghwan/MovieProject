package reserve.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import reserve.dto.ReserveVO;
import util.DBManager;


public class ReserveDAO {
	private static ReserveDAO instance = new ReserveDAO();
	private ReserveDAO() {}
	public static ReserveDAO getInstance() {
		return instance;
	}
	
	//	모든 예매 보기
	public List<ReserveVO> selectAllReserves() {
		String sql = "select*from reserve order by re_num";
		List<ReserveVO>list = new ArrayList<ReserveVO>();
		try(Connection conn = DBManager.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);	){
			while(rs.next()) {	//	모든 열에 대하여 반복 
				ReserveVO rVo = getReserveVOFromResultSet(rs);
				list.add(rVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
		}
	

	//	예매
	public void insertReserve(String seat_num, String mem_name, String mv_name, int th_num,Timestamp th_date,String mem_id) throws NamingException {
		String sql = "insert into reserve (re_num, seat_num, mem_name, mv_name, th_num, th_date, mem_id) values(NULL,?,?,?,?,?,?)";
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, seat_num);
			pstmt.setString(2, mem_name);
			pstmt.setString(3, mv_name);
			pstmt.setInt(4, th_num);
			pstmt.setTimestamp(5, th_date);
			pstmt.setString(6, mem_id);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//	회원ID에 맞는 한 행을 가져옴
	public ReserveVO selectOneReserveByMem_ID(String mem_id) {
		String sql = "select*from reserve where mem_id = ?";
		ReserveVO rVo = null;
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				rVo = getReserveVOFromResultSet(rs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);
		}
		return rVo;
	}
	
//	예매 취소
	public int deleteReserve(int re_num) throws NamingException {
		String sql = "delete from reserve where re_num=?";
		int result = -1;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, re_num);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	예매된 좌석 1로 설정(미구현)
	public void insertReserve1(String seat_num) throws NamingException {
		String sql = "insert into seat (re_num, seat_num) values(NULL,?)";
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, seat_num);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//	가장 최근의 예매정보를 가져옴
	public ReserveVO selectMaxRe_Num() {
		String sql = "select * from reserve where re_num = (select max(re_num) from reserve)";
		ReserveVO rVo = new ReserveVO();
		ResultSet rs = null;
		try (Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			rs = pstmt.executeQuery();
			if(rs.next()) {
				rVo.setRe_num(rs.getInt("re_num"));
				rVo.setSeat_num(rs.getString("seat_num"));
				rVo.setMem_name(rs.getString("mem_name"));
				rVo.setMv_name(rs.getString("mv_name"));
				rVo.setTh_num(rs.getInt("th_num"));
				rVo.setTh_date(rs.getTimestamp("th_date"));
				rVo.setMem_id(rs.getString("mem_id"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);
		}
		return rVo;
	}
	
	// 예매된 좌석번호를 가져옴
	public String selectOneSeatByRe_Num(int re_num) {
		String sql = "select seat_num from reserve where re_num = ?";
		String result = null;
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, re_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				 result = rs.getString("seat_num");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);
		}
		return result;
	}
	
	private ReserveVO getReserveVOFromResultSet(ResultSet rs) throws SQLException {
		ReserveVO rVo = new ReserveVO();
		rVo.setRe_num(rs.getInt("re_num"));
		rVo.setSeat_num(rs.getString("seat_num"));
		rVo.setMem_name(rs.getString("mem_name"));
		rVo.setMv_name(rs.getString("mv_name"));
		rVo.setTh_num(rs.getInt("th_num"));
		rVo.setTh_date(rs.getTimestamp("th_date"));
		rVo.setMem_id(rs.getString("mem_id"));
		return rVo;
	}
	
	//	? 예매 정보 수정(미구현)
	public int updateBoard(ReserveVO rVo) throws NamingException {
		String sql = "update reserve set re_num=?, seat_num=? where re_num=?";
		int result = -1 ; // 변경 실패(초기값
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, rVo.getRe_num());
			pstmt.setString(2, rVo.getSeat_num());
			result = pstmt.executeUpdate();	//	1 : 성공, 0 : 실패
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}


