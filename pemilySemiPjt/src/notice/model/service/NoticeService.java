package notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import care.model.dao.CareDao;
import care.model.vo.Care;
import common.JDBCTemplate;
import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;
import notice.model.vo.NoticePageData;

public class NoticeService {

	public NoticePageData selectNoticeList(int reqPage) {
				Connection conn = JDBCTemplate.getConnection();
				int numPerPage = 10;
				int end = reqPage*numPerPage;
				int start = end - numPerPage + 1;
			
				NoticeDao dao = new NoticeDao();	
				//요청한 페이지의 게시물을 조회
				ArrayList<Notice> list = dao.selectNoticeList(conn,start,end);
			
				//페이지 네비게이션제작
			
				//전체 게시물 수 조회
				int totalCount = dao.totalCount(conn); 
				
				//전체 페이지 수 계산
				int totalPage = 0;
				if(totalCount%numPerPage == 0) {
					totalPage = totalCount/numPerPage;
				}else {
					totalPage = totalCount/numPerPage+1; 
				}
				
			
				int pageNaviSize = 5; 
				int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
				String pageNavi  = "<ul class='pagination pagination-lg'>";
				//페이지 네비 시작번호가 1이 아닌경우는 이전버튼 생성
				if(pageNo !=1) {
					pageNavi += "<li class='page-item'>";
					pageNavi += "<a class='page-link' href='/noticeList?reqPage="+(pageNo-1)+"'>&lt;</a></li>";
					
				}
				//페이지 숫자 생성
				for(int i=0;i<pageNaviSize;i++) {
					if(pageNo == reqPage) {			//목록번호가 12345에서 번호도 3이고 내가 보고있는 페이지도 3일때
						pageNavi += "<li class='page-item active'>";
			            pageNavi += "<a class='page-link' href='/noticeList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
					}else {
						pageNavi += "<li class ='page-item'>";
			            pageNavi += "<a class='page-link' href='/noticeList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
					}
					pageNo++;
					if(pageNo>totalPage) {
						break;
					}
				}
				//다음버튼 생성
				if(pageNo <= totalPage) {
					pageNavi += "<li class='page-item'>";
					pageNavi += "<a class='page-link' href='/noticeList?reqPage="+(pageNo)+"'>&gt;</a></li>";
				}
				pageNavi += "</ul>";
				JDBCTemplate.close(conn);
				NoticePageData npd = new NoticePageData(list, pageNavi);
				return npd;
	}

	public Notice selectOneCare(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		NoticeDao dao = new NoticeDao();
		Notice n= dao.selectOneCare(conn, noticeNo);
		JDBCTemplate.close(conn);
		return n;
	}

}
