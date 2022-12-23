package com.kh.sachet.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sachet.common.model.vo.PageInfo;
import com.kh.sachet.product.model.vo.Product;

@Repository
public class ProductDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.selectListCount");
	}

	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		ArrayList<Product> pList = (ArrayList)sqlSession.selectList("productMapper.selectProductList", null, rowBounds);
		return pList;
	}

	public Product selectProduct(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.selectOne("productMapper.selectProduct", pno);
	}

}
