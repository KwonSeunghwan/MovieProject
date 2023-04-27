package theater_date.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

//import seat.dto.SeatVO;
import theater.dto.TheaterVO;
import theater_date.dto.Theater_DateVO;
import util.DBManager;

public class Theater_DateDAO {
	private static Theater_DateDAO instance = new Theater_DateDAO();
	
	private Theater_DateDAO() {}
	public static Theater_DateDAO getInstance() {
		return instance;
	}
	
	//	상영관 번호로 남은 좌석수 가져옴(미구현)
	public List<Theater_DateVO>selectSeat_Rem(TheaterVO thVo) {
		String sql = "select * from theater_date AS a INNER JOIN theater AS b ON a.th_num = b.?";
		List<Theater_DateVO> list = new ArrayList<Theater_DateVO>();
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, thVo.getTh_num());
			rs = pstmt.executeQuery();
			while(rs.next()) {
			Theater_DateVO tdVo = new Theater_DateVO();
			tdVo.setTheater_date_num(rs.getInt("theater_date_num"));
			tdVo.setTh_date(rs.getTimestamp("th_date"));
			tdVo.setMv_num(rs.getInt("mv_num"));
//			tdVo.setThVo(thVo);
//			tdVo.setSeat_rem(rs.getInt("total_seat_num"));
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//	영화별 상영일정을 가져옴(List)
	public List<Theater_DateVO> selectTheaterListByMv_Num(int mv_num) {
		String sql = "select * from theater_date where mv_num = ? order by th_num";
		List<Theater_DateVO> list = new ArrayList<Theater_DateVO>();
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, mv_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
			Theater_DateVO tdVo = getTheater_DateVOFromResultSet(rs);
			list.add(tdVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
		}
	
	//	영화별 상영일정을 가져옴
	public Theater_DateVO selectTheater_DateByMv_Num(int mv_num) {
		String sql = "select * from theater_date where mv_num = ?";
		Theater_DateVO tdVo = null;
		ResultSet rs = null;
		try(Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);)
		{
			pstmt.setInt(1, mv_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {	
			tdVo = new Theater_DateVO();
			tdVo.setTheater_date_num(rs.getInt("theater_date_num"));
			tdVo.setTh_date(rs.getTimestamp("th_date"));
			tdVo.setMv_num(rs.getInt("mv_num"));
			tdVo.setTh_num(rs.getInt("th_num"));
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return tdVo;
		}
	//	남은 좌석 수
	
	//	모든 상영일정
	public List<Theater_DateVO> selectAllTheater_Date() {
		String sql = "select * from theater_date order by theater_date_num";
		List<Theater_DateVO>list = new ArrayList<Theater_DateVO>();
		try(Connection conn = DBManager.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);	){
			while(rs.next()) {	//	모든 열에 대하여 반복 
				Theater_DateVO tdVo = getTheater_DateVOFromResultSet(rs);
				list.add(tdVo);
			}
		}catch(SQLException | NamingException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	private Theater_DateVO getTheater_DateVOFromResultSet(ResultSet rs)throws SQLException{
		Theater_DateVO tdVo = new Theater_DateVO();
		tdVo.setTheater_date_num(rs.getInt("theater_date_num"));
		tdVo.setTh_date(rs.getTimestamp("th_date"));
		tdVo.setMv_num(rs.getInt("mv_num"));
		tdVo.setTh_num(rs.getInt("th_num"));
		return tdVo;
	}
	
}
