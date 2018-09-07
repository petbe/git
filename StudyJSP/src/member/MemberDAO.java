package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.sun.istack.internal.FinalArrayList;

/*member관련 DB작업을 하는 클래스*/
public class MemberDAO {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	//디비 연결 메서드
	private Connection   getConnection() throws Exception {
		 con = null;
	
		Class.forName("com.mysql.jdbc.Driver");
		String dbUrl = "jdbc:mysql://localhost:3306/jspdb2";
		String dbUser = "jspid";
		String dbPass = "jsppass";
		con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
		
		return con;
	}

	public void InsertMember(MemberBean mb) {
		// 디비에 넣기 위해 jsp에서 객채로 생성되서 디비에 저장 하는 기능 의 메서드
		try {
			con=getConnection();

			String sql = "insert into member values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPass());
			pstmt.setString(3, mb.getName());
			pstmt.setTimestamp(4, mb.getReg_date());
			pstmt.setInt(5, mb.getAge());
			pstmt.setString(6, mb.getGender());
			pstmt.setString(7, mb.getEmail());
			pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			
			
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			
			

		}
		// 1
		// 2
		// 3
		// 4

	}

	public MemberBean getMember(String id) {
		MemberBean mb;
		mb = new MemberBean();
		try {

			con=getConnection();


			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mb.setId(rs.getString("id"));
				mb.setPass(rs.getString("pass"));
				mb.setEmail(rs.getString("email"));
				mb.setName(rs.getString("name"));
				mb.setAge(rs.getInt("age"));
				mb.setGender(rs.getString("gender"));
				mb.setReg_date(rs.getTimestamp("reg_date"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			

		}
		return mb;
	}

	public boolean memberdelete(String getId, String getPass) {
		boolean flag=false;
		try {

			con=getConnection();

			String sql = "select * from member where id=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, getId);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String pass = rs.getString("pass");
			if (getPass.equals(pass)) {
				
				 //비번 맞으면 삭제 실행
				
				String sql2 = "delete from member where id=?";
				PreparedStatement pstmt2 = con.prepareStatement(sql2);
				pstmt2.setString(1, getId);
				pstmt2.executeUpdate();
				pstmt2.close();
				
				flag=true;

			}else{
				//비번 틀림
				flag= false;}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			
		}
		return flag;
	}

	public int userCheck(String id, String pass) {
		int num=-1;
		try {
			con=getConnection();

			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// 아이디 맞을떄
				if (rs.getString("pass").equals(pass)) {
					// 아이디 비번 다 맞을떄
					num=1;
				} else {
					// 비빈어 틀릴떄
					num= 0;
				}

			} else {
				// 아이디 틀릴떄

				num=-1;
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
		return num;
	}

	public boolean updateMember(MemberBean b){
		boolean flag=false;
		try{
			con=getConnection();

			  String sql="select pass from member where id=?";
			  PreparedStatement pstmt = con.prepareStatement(sql);
			  pstmt.setString(1,b.getId());
			  ResultSet rs = pstmt.executeQuery();
			  rs.next();
			  String pass=rs.getString("pass");
			  
			  if(b.getPass().equals(pass)){
				  String sql2="update member set name=?,age=?,gender=?,email=? where id=?";
				  PreparedStatement pstmt2 = con.prepareStatement(sql2);
			  		pstmt2.setString(1,b.getEmail());
			  		pstmt2.setInt(2,b.getAge());
			  		pstmt2.setString(3,b.getGender());
			  		pstmt2.setString(4,b.getEmail());
			  		pstmt2.setString(5,b.getId());
			  		pstmt2.executeUpdate();
			  		pstmt2.close();
			  		flag=true;
			  		
			  }else{
				  flag=false;
			  }
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
		
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
			 
		}
		return flag;
	}

	public ArrayList<MemberBean> get_M_List(){
		MemberBean mb;
		
		ArrayList<MemberBean> mbList =new ArrayList<MemberBean>();
		try{
			con=getConnection();

		 String sql="select * from member";
		 pstmt = con.prepareStatement(sql);
		 rs = pstmt.executeQuery();
		 	while(rs.next()){
		 		mb = new MemberBean();
				mb.setId(rs.getString("id"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setAge(Integer.parseInt(rs.getString("age")));
				mb.setGender(rs.getString("gender"));
				mb.setEmail(rs.getString("email"));
				mb.setReg_date(rs.getTimestamp("reg_date"));
				//System.out.println("mbList에 넣을떄 ID값:"+rs.getString("id"));
				mbList.add(mb);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(rs !=null)try {rs.close();}catch (SQLException e) {}
			if(pstmt !=null)try {pstmt.close();}catch (SQLException e) {}
			if(con !=null)try {con.close();}catch (SQLException e) {}
		}
		/*for(int i=0; i<2;i++){
			MemberBean bb=mbList.get(i);
			System.out.println("mbList의 ID값:"+bb.getId());
		}*/
		return mbList;
	}
}
