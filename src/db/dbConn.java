package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import login.LoginVO;

public class dbConn {
	//Field
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521";
	String user = "scott";
	String pwd = "tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;	
	
	//Constructor
	public dbConn(){
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,pwd);
		}catch(Exception e){
			System.out.println("1~2 단계 오류 발생~");
		}
	}
	
	public PreparedStatement getPreparedStatement(String sql){
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			System.out.println("3단계 오류 발생~");
		}
		
		return pstmt;
	}
	
	public void close(){
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		} catch (Exception e) {
			System.out.println("종료 시 에러 발생~~");
		}		
	}

}










