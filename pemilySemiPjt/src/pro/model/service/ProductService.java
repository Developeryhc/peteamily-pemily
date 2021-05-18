package pro.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import pro.model.dao.ProductDao;
import pro.model.vo.product;

public class ProductService {

	public ArrayList<product> selectProduct() {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<product> list = new ProductDao().selectProduct(conn);
		JDBCTemplate.close(conn);
		return list;
	}

}
