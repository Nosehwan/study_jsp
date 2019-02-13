package board_test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.dbConn;

public class BoardTestDAO extends dbConn {
	PreparedStatement pstmt;
	ResultSet rs;

	public ArrayList<BoardTestVO> getList() {
		ArrayList<BoardTestVO> list = new ArrayList<BoardTestVO>();

		String sql = "select ROWNUM rno, btitle, to_char(bdate,'yyyy-mm-dd') bdate, bhits,bid from (select btitle, bdate, bhits,bid from board_test order by bdate desc)";
		pstmt = getPreparedStatement(sql);
		try {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardTestVO vo = new BoardTestVO();
				vo.setBdate(rs.getString("bdate"));
				vo.setBhits(rs.getInt("bhits"));
				vo.setRno(rs.getInt("rno"));
				vo.setBtitle(rs.getString("btitle"));
				vo.setBid(rs.getInt("bid"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	public int getInsertResult(BoardTestVO vo) {
		int result = 0;
		String sql = "insert into board_test values(sequ_board_test.nextval,?,?,?,sysdate,0)";

		try {
			pstmt = getPreparedStatement(sql);

			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public BoardTestVO getContent(int bid) {
		BoardTestVO vo = new BoardTestVO();
		String sql = "select bdate,bhits,btitle,bcontent from board_test where bid=?";

		try {
			pstmt = getPreparedStatement(sql);
			pstmt.setInt(1, bid);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				vo.setBdate(rs.getString("bdate"));
				vo.setBhits(rs.getInt("bhits"));
				vo.setBtitle(rs.getString("btitle"));
				vo.setBcontent(rs.getString("bcontent"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int getUpdateResult(BoardTestVO vo) {
		int result = 0;
		String sql = "update board_test set btitle=?,BCONTENT=? where bid = ?";

		try {
			pstmt = getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setInt(3, vo.getBid());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public void getHitsUpdate(int bid) {
		try {
			String sql = "update board_test set bhits=bhits+1 where bid =?";
			pstmt = getPreparedStatement(sql);
			pstmt.setInt(1, bid);
			pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getDeleteResult(int bid) {
		int result = 0;
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
