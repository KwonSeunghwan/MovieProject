package movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import movie.dto.MovieVO;
import util.DBManager;

public class MovieDAO {
	private MovieDAO() {}
	private static MovieDAO instance = new MovieDAO();
	public static MovieDAO getInstance() {return instance;}
	
	public MovieVO selectMvByNum(int mv_num){
		String sql = "select * from movie where mv_num = ?";
		ResultSet rs = null;
		MovieVO mVo = null;
		try (Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setInt(1, mv_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			mVo = new MovieVO();
			mVo.setMv_num(rs.getInt("mv_num"));
			mVo.setMv_name(rs.getString("mv_name"));
			mVo.setMv_price(rs.getInt("mv_price"));
			mVo.setMv_actor(rs.getString("mv_actor"));
			mVo.setMv_director(rs.getString("mv_director"));
			mVo.setMv_director(rs.getString("summary"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);
		}
		return mVo;
	}
	public List<MovieVO> selectAllMovie() throws NamingException {
		String sql = "select * from movie order by mv_num";
		List<MovieVO> list = new ArrayList<MovieVO>();
		try (Connection conn = DBManager.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			while (rs.next()) { // 모든 열에 대하여 반복
				MovieVO mVo = getMovieVOFromResultSet(rs);
				list.add(mVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	private MovieVO getMovieVOFromResultSet(ResultSet rs) throws SQLException {
		MovieVO mVo = new MovieVO();
		mVo.setMv_num(rs.getInt("mv_num"));
		mVo.setMv_name(rs.getString("mv_name"));
		mVo.setMv_director(rs.getString("mv_director"));
		mVo.setMv_actor(rs.getString("mv_actor"));
		mVo.setSummary(rs.getString("summary"));
		mVo.setMv_price(rs.getInt("mv_price"));
		return mVo;
	}

	public int insertMovie(MovieVO mVo) throws NamingException {
		String sql = "insert into movie(" + "mv_name, mv_director, mv_actor, summary, mv_price) "
				+ "values(?, ?, ?, ?, ?)";
		int result = -1;
		try (Connection conn = DBManager.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, mVo.getMv_name());
			pstmt.setString(2, mVo.getMv_director());
			pstmt.setString(3, mVo.getMv_actor());
			pstmt.setString(4, mVo.getSummary());
			pstmt.setInt(5, mVo.getMv_price());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
/*
	public BoardVO selectOneBoardByNum(int mv_num) {
		String sql = "select * from board where mv_num = ?";
		BoardVO bVo = null;
		ResultSet rs = null;
		try (Connection conn = DBManager.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setInt(1, mv_num);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 모든 열에 대하여 반복 bVo =
				bVo = getBoardVOFromResultSet(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(rs);
		}
		return bVo;
	}
*/
	public int updateMovie(MovieVO mVo) throws NamingException {
		String sql = "update movie set mv_name=?, mv_director=?, mv_actor=?, " +
				"summary=?, mv_price=? where mv_num=?";
		int result = -1; // 변경 실패
		try (Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql); ) {
			pstmt.setString(1, mVo.getMv_name());
			pstmt.setString(2, mVo.getMv_director());
			pstmt.setString(3, mVo.getMv_actor());
			pstmt.setString(4, mVo.getSummary());
			pstmt.setInt(5, mVo.getMv_price());
			pstmt.setInt(6, mVo.getMv_num());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} return result;
	 }

	public int deleteMovie(int mv_num) throws NamingException {
		String sql = "delete from movie where mv_num=?";
		int result = -1;
		try (Connection conn = DBManager.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setInt(1, mv_num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
