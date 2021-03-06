package member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import member.model.vo.MypageData;
import member.model.dao.MemberDao;
import member.model.vo.Member;
import member.model.vo.MemberPage;
import order.model.dao.OrderDao;
import order.model.vo.Order;
import outCa.model.dao.OutCaDao;
import outCa.model.vo.OutCaTable;

public class MemberService {
	public int inserMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().insertMember(conn,m);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}

	public Member selectOneMember(String memberId, String memberPw) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().selectOneMember(conn,memberId,memberPw);
		JDBCTemplate.close(conn);
		return m;
	}

	public Member selectOneMember(String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().selectOneMember(conn, memberId);
		JDBCTemplate.close(conn);
		return m;
	}

	public int updateMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().updateMember(conn,m);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int deleteMember(int memberNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().deleteMember(conn,memberNo);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public Member findId(String memberName, String memberPhone, String memberEmail) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().findId(conn,memberName,memberPhone,memberEmail);
		JDBCTemplate.close(conn);
		return m;
	}

	public MemberPage selectAllMember(int reqPage) {
		Connection conn = JDBCTemplate.getConnection();
		int printList = 10;						//????????? ????????? ??????
		int printNavi = 10;						//????????? ?????? ??????
		int end = printList * reqPage;			//list ????????? ???
		int start = end - printList + reqPage;	//list ?????? ???
		ArrayList<Member> list = new MemberDao().selectAllMember(conn,start,end);		//????????? ??????
		int totalListCount = new MemberDao().totalListCount(conn);		//??? ????????? ???
		int aReqPage = ((reqPage-1) / printNavi) * printNavi+1;
		//??????????????? ????????? ??? ??????
		int totalList = totalListCount % printList == 0 ? totalListCount/printList : totalListCount/printList+1;
		//?????? ?????? ??????
		String navigation = "<div class=\"listPageWrap\">";
		//'<'???????????? ?????? ?????? > ?????? ?????? ??????????????? ???????????? ?????? ??????
		if(aReqPage != 1) {	// ?????? ???????????? ??????
			navigation += "<a href='/memberList?reqPage="+(aReqPage-1)+"'><img src='images/moveButton/leftBtn1.png'></a>";
		}
		//????????? ???????????? ?????? ??????
		for(int i=0;i<printNavi;i++) {
			//???????????? ???????????? ?????? ??????
			if(aReqPage == reqPage) {		//reqPage > ???????????? ?????????(?????????)?????????
				navigation += "<a class='activeNavi' href='/memberList?reqPage="+aReqPage+"'>"+aReqPage+"</a>";
			}else {
				navigation += "<a href='/memberList?reqPage="+aReqPage+"'>"+aReqPage+"</a>";				
			}
			aReqPage++;
			if(aReqPage > totalList) {
				break;
			}
		}
		if(aReqPage <= totalList) {		//11,22,33,44,... > ?????? ????????? ?????? ?????? ??????
			navigation += "<a href='/memberList?reqPage"+aReqPage+"'><img src='images/moveButton/rightBtn1.png'></a>";
		}
		navigation += "</div>";
		JDBCTemplate.close(conn);
		MemberPage mp = new MemberPage(list, navigation);
		return mp;
	}

	public MypageData myPage(String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().selectOneMember(conn, memberId);
		ArrayList<Order> list = new OrderDao().order(conn, memberId);
		MypageData md = new MypageData(m, list);
		JDBCTemplate.close(conn);
		return md;
	}

	public Member findPw(String memberId, String memberPhone, String memberEmail) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().findPw(conn,memberId,memberPhone,memberEmail);
		JDBCTemplate.close(conn);
		return m;
	}

}
