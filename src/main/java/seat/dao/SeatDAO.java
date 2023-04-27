package seat.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import seat.dto.SeatVO;
import util.DBManager;

public class SeatDAO {
	private static SeatDAO instance = new SeatDAO();
	private SeatDAO() {}
	public static SeatDAO getInstance() {
		return instance;
	}
	
	//	선택한 좌석 
	public List<SeatVO> selectSeatBySeat_Num(String seat_num) {
		String sql = "select seat_num from seat where seat_num = ?";
		List<SeatVO> list = new ArrayList<SeatVO>();
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, seat_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				SeatVO sVo = new SeatVO();
				sVo = new SeatVO();
				sVo.setSeat_inuse(rs.getInt("seat_inuse"));
				sVo.setSeat_num(rs.getString("seat_num"));
				sVo.setTh_num(rs.getInt("th_num"));
				list.add(sVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
		}
	
	// 모든 좌석
	public List<SeatVO> selectAllSeat() {
		String sql = "select*from Seat order by seat_num";
		List<SeatVO>list = new ArrayList<SeatVO>();
		try(Connection conn = DBManager.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);	){
			while(rs.next()) {	//	모든 열에 대하여 반복 
				SeatVO sVo = getSeatVOFromResultSet(rs);
				list.add(sVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	private SeatVO getSeatVOFromResultSet(ResultSet rs) throws SQLException {
		SeatVO sVo = new SeatVO();
		sVo.setSeat_inuse(rs.getInt("seat_inuse"));
		sVo.setSeat_num(rs.getString("seat_num"));
		sVo.setTh_num(rs.getInt("th_num"));
		return sVo;
	}
	
	//	좌석삽입(수정필요)
	public void insertSeat(SeatVO sVo) throws NamingException {
		String sql = "insert into seat (seat_inuse, seat_num, th_num) values(?,?,?)";
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, sVo.getSeat_inuse());
			pstmt.setString(2, sVo.getSeat_num());
			pstmt.setInt(3, sVo.getTh_num());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//	? 선택한 좌석 (1개 행)
	public SeatVO selectOneSeatBySeat_Num(String seat_num) {
		String sql = "select*from seat where seat_num = ?";
		SeatVO sVo = null;
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, seat_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sVo = getSeatVOFromResultSet(rs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);
		}
		return sVo;
	}
	
	//	?
	public int deleteSeat(int seat_num) throws NamingException {
		String sql = "delete from seat where seat_num=?";
		int result = -1;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, seat_num);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
