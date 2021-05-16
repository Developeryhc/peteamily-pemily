package faq.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import faq.model.dao.FaqDao;
import faq.model.vo.Faq;

public class FaqService {

	public ArrayList<Faq> selectFaqList() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Faq> list = new FaqDao().selectFaqList(conn);
		JDBCTemplate.close(conn);
		return list;
	}

}
