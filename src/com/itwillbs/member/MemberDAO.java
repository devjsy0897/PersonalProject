package com.itwillbs.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	// 정보를 처리해서 데이터 베이스에 저장

	// 디비연결에 필요한 변수 선언
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	// 디비 연결
	private Connection getCon() throws Exception {

		// Connection con=null;
		Context init = new InitialContext();

		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/funwebDB");

		con = ds.getConnection();

		return con;
	}

	// 디비 자원해제
	public void CloseDB() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 회원 가입 메서드 (insertMember())
	public void insertMember(MemberBean mb) {

		try {
			con = getCon();

			// sql
			sql = "insert into fun_member(id,pass,name,email,birth,gender,"
					+ "addr,phone,mobile,reg_date) values(?,?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);

			// ?
			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPass());
			pstmt.setString(3, mb.getName());
			pstmt.setString(4, mb.getEmail());
			pstmt.setInt(5, mb.getBirth());
			pstmt.setString(6, mb.getGender());
			pstmt.setString(7, mb.getAddr());
			pstmt.setString(8, mb.getPhone());
			pstmt.setString(9, mb.getMobile());
			pstmt.setDate(10, mb.getReg_date());

			// 실행
			pstmt.executeUpdate();

			System.out.println("회원 정보 가입 완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseDB();
		}

	}
	// 회원 가입 메서드 (insertMember())

	// 중복아이디 체크하는 메서드 joinIdCheck(ID);
	public int joinIdCheck(String ID) {
		int result = -1;

		try {
			// 디비연결
			getCon();
			// SQL(select) - pstmt
			// 전달받은 ID에 해당하는 정보가 있는지 판단
			sql ="select * from fun_member where id=?";
				
			pstmt = con.prepareStatement(sql);
			
			// ?
			pstmt.setString(1, ID);
			// 실행
			rs = pstmt.executeQuery();

			// rs데이터 처리
			// 1 - 사용 가능한 아이디
			// 0 - 사용 불가능한 아이디
			// -1 -> 에러 발생
			if(rs.next()){
				result = 0; //기존 데이터 있음 => 중복 아이디
			}else{
				result = 1; // 기존데이터 없음 => 중복X 아이디
			}
			
			System.out.println("아이디 중복체크 : "+result);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseDB();
		}

		return result;
	}
	// 중복아이디 체크하는 메서드 joinIdCheck(ID);

    // 로그인 체크 메서드idCheck(id,pass)
	public int idCheck(String id, String pass){
		int result = -1;
		
		try {
			//디비연결
			con = getCon();
			
			//sql(id에 해당하는 정보가 있는지 없는지 판단)
			//아이디, 비밀번호 같을 때 로그인처리(1)
			//아이디x(-1) 비밀번호x(0)
			sql="select pass from fun_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(pass.equals(rs.getString("pass"))){
					result=1; //로그인 성공
				}else{
					result=0; //비밀번호 오류
				}
			}else{
				result=-1; //아이디가 없음
			}
			
			System.out.println("로그인 처리 완료 : "+result);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			CloseDB();
		}
		return result;
	}
	
    // 로그인 체크 메서드idCheck(id,pass)

	// getMember(id)
	public MemberBean getMember(String id){
		MemberBean mb = null;
		
	
			try{
			// 1,2 디비 연결
			con = getCon();
			// 3 SQL 작성 (select) &  pstmt
			sql = "select * from fun_member where id = ?";
			pstmt = con.prepareStatement(sql);
			// 3-1 ?
			pstmt.setString(1, id);
			// 4 실행 -> rs
			rs = pstmt.executeQuery();			
			// 5 데이터 처리 		
			if(rs.next()){
				// DB에 있는 회원정보를 저장-> 페이지로 전달
				mb = new MemberBean();
				
				mb.setBirth(rs.getInt("birth"));
				mb.setEmail(rs.getString("email"));
				mb.setGender(rs.getString("gender"));
				mb.setId(rs.getString("id"));
				mb.setName(rs.getString("name"));
				mb.setPass(rs.getString("pass"));
				mb.setReg_date(rs.getDate("reg_date"));
				mb.setPhone(rs.getString("phone"));
				mb.setMobile(rs.getString("mobile"));
				mb.setAddr(rs.getString("addr"));
				
				System.out.println(" 회원정보 저장완료 ! ");
				System.out.println(mb);
			}
			
			System.out.println(" 구문 실행 완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseDB();
		}	
		
		return mb;
	}	
	// getMember(id)
	
	// deleteMember(id,pass)
	public int deleteMember(String id, String pass){
		int result = -1;
		
		try {
			// 1,2 디비 연결
			con=getCon();
			
			// 3 SQL 구문작성
			sql = "select pass from fun_member where id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			// 4 실행->rs
			rs = pstmt.executeQuery();
			
			//데이터처리
			if(rs.next()){
				if(pass.equals(rs.getString("pass"))){
					//3
					sql="delete from fun_member where id=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					result = 1;
				}else{
					result=0;
				}
			}else{
				result=-1;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			CloseDB();
		}
		
		return result;
	}
	// deleteMember(id,pass)
	
	// updateMember(mb)
	public int updateMember(MemberBean mb){
		int result = -1;
		
		try {
			// 1,2 디비연결
			con = getCon();
			// 3 sql 작성 (select)-수정하는 사람이 있는지를 체크
			sql = "select pass from fun_member where id=?";
			//   pstmt 객체 생성
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mb.getId());
			
			// 4 실행
			rs = pstmt.executeQuery();
			
			// 5 데이터 처리
			//   사용자 o -비밀번호 체크(o/x) => 비밀번호 수정(3,4 단계)
			//   사용자 x
			if(rs.next()){
				if(mb.getPass().equals(rs.getString("pass"))){
					
					// 데이터 수정
					
					// 3 sql & pstmt
					sql = "update fun_member set pass=?,name=?,email=?,birth=? "
							+ "where id=?";
					
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, mb.getPass1());
					pstmt.setString(2, mb.getName());
					pstmt.setString(3, mb.getEmail());
					pstmt.setInt(4, mb.getBirth());
					pstmt.setString(5, mb.getId());
					
					// 4 실행
					pstmt.executeUpdate();
					
					System.out.println(" 정보수정 완료 ");
					
					result = 1;
				}else{
					result = 0;
				}				
			}else{
				// 사용자가 없는경우
				result = -1;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			CloseDB();
		}
		return result;
	}
	// updateMember(mb)
	
}























