package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import member.MemberBean;

public class BoardDAO {
	
	//디비 연결 메서드
	private Connection   getConnection() throws Exception {
		Connection con=null;
		
	
		 con = null;
	
		Class.forName("com.mysql.jdbc.Driver");
		String dbUrl = "jdbc:mysql://localhost:3306/jspdb2";
		String dbUser = "jspid";
		String dbPass = "jsppass";
		con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
		
		return con;
	}
	
	public void InsertBoard(BoardBean bb) {
		// 디비에 넣기 위해 jsp에서 객채로 생성되서 디비에 저장 하는 기능 의 메서드
		Connection con=null;
		PreparedStatement pstmt=null;
		int num=0;
		ResultSet rs=null;
		try{
			//1,2디비 연결 메소드 호출
			con=getConnection();
			//게시판 글번호 구하기
			String sql="select max(num) as num from board";
			 pstmt = con.prepareStatement(sql);
			  rs = pstmt.executeQuery();
			  if(rs.next()){
				System.out.println(rs.getInt("num"));
				num=rs.getInt("num")+1;
			  }
			//3num 구하기 게시판 글중에 가증 큰 번호 구하기
			  String sql2="insert into board values(?,?,?,?,?,?,?,?,?,?,now()) ";
			  pstmt = con.prepareStatement(sql2);
			  pstmt.setInt(1,num);
			  pstmt.setString(2,bb.getName());
			  pstmt.setString(3,bb.getPass());
			  pstmt.setString(4,bb.getSubject());
			  pstmt.setString(5,bb.getContent());
			  pstmt.setString(6,bb.getFile());
			  pstmt.setInt(7,num);
			  pstmt.setInt(8,0);
			  pstmt.setInt(9,0);
			  pstmt.setInt(10,0);
			  pstmt.executeUpdate();
			  //4저장 <- 결과 실행
			//5 첫행에 데이터 있으면 가장큰 번호 +1
			// sql insert num구한값 ->re_ref
			//re_lev 0, re_seq(0)
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			
			

		}

	}

	public int getBoradCount(){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int count=0;
		try{
			con=getConnection();
			String sql="select count(num) as num from board";
			 pstmt = con.prepareStatement(sql);
			 rs = pstmt.executeQuery();
			 if(rs.next()){
					System.out.println(rs.getInt("num"));
					count=rs.getInt("num");
				  }
		}catch (Exception e) {
			// TODO: handle exception
		}finally {

			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		
		
		return count;
	}
	public ArrayList<BoardBean> getBoardLIst(int startRow, int pageSize){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardBean bb;
		ArrayList<BoardBean> bl = new ArrayList<BoardBean>();
		
		try{
			con=getConnection();
			String sql="select * from board order by re_ref desc,re_seq asc  limit ?, ?";
			pstmt = con.prepareStatement(sql);
			 pstmt.setInt(1,startRow-1);
			 pstmt.setInt(2,pageSize);
			 rs = pstmt.executeQuery();
			 while(rs.next()){
				 bb=new BoardBean();
				 bb.setNum(rs.getInt("num"));
				 bb.setName(rs.getString("name"));
				 bb.setPass(rs.getString("pass"));
				 bb.setSubject(rs.getString("subject"));
				 bb.setFile(rs.getString("file"));
				 bb.setContent(rs.getString("content"));
				 bb.setRe_ref(rs.getInt("re_ref"));
				 bb.setRe_lev(rs.getInt("re_lev"));
				 bb.setReadcount(rs.getInt("readcount"));
				 bb.setDate(rs.getDate("date"));
				 bl.add(bb);
			 }
			 
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("트라이에도 안들어감");
		}finally {

			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		
		return bl;
	}

	public BoardBean getContent(int num){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardBean bb=null;
		try{
			con=getConnection();
			String sql="select * from board where num=?";
			 pstmt = con.prepareStatement(sql);
			 pstmt.setInt(1, num);
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()){
				 bb=new BoardBean();
				 bb.setNum(rs.getInt("num"));
				 bb.setName(rs.getString("name"));
				 bb.setPass(rs.getString("pass"));
				 bb.setSubject(rs.getString("subject"));
				 bb.setFile(rs.getString("file"));
				 bb.setContent(rs.getString("content"));
				 bb.setRe_ref(rs.getInt("re_ref"));
				 bb.setRe_lev(rs.getInt("re_lev"));
				 bb.setReadcount(rs.getInt("readcount")+1);
				 bb.setDate(rs.getDate("date"));
			 }
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		return bb;
	}
	
	public int readCount(int readCount, int num){
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try{
			con=getConnection();
			String sql="update board set readcount=? where num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,readCount);
			pstmt.setInt(2,num);
			pstmt.executeUpdate();
			System.out.println("들어감");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("안들어감");
			e.printStackTrace();
		}finally {
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		
		return readCount;
		
	}
	
	public void updateContent(BoardBean bb){
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try{
			con=getConnection();
			String sql="update board set subject=?,content=? where num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,bb.getSubject());
			pstmt.setString(2,bb.getContent());
			pstmt.setInt(3,bb.getNum());
			pstmt.executeUpdate();
			System.out.println("들어감");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("안들어감");
			e.printStackTrace();
		}finally {
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		
		
	}
	
	public int boardCheck(int num, String pass) {
		int num1=-1;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=getConnection();

			String sql = "select * from board where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// 아이디 맞을떄
				if (rs.getString("pass").equals(pass)) {
					// 아이디 비번 다 맞을떄
					num1=1;
				} else {
					// 비빈어 틀릴떄
					num1= 0;
				}

			} 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}
		return num1;
	}
	
	
	public void  boarddelete(int num) {
	System.out.println("del의 num:"+num);
		Connection con=null;
		PreparedStatement pstmt=null;
				
				 //비번 맞으면 삭제 실행
		try{
			con=getConnection();
				String sql = "delete from board where num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
				System.out.println("del들어감");
			
		} catch (Exception e) {
			System.out.println("del안 들어감");
			e.printStackTrace();
		} finally {
			
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			
		}
	
	}
}
