package com.kh.wefer.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Payment_rep;

@Repository("prDao")
public class Payment_repDao {
	@Autowired  
	private SqlSession sqlSession;
	
	/*
	 * public String name() { String name =
	 * sqlSession.selectOne("Member.selectName"); return name; }
	 */
	
    public List<Payment_rep> commentList(Payment_rep payment_id) throws Exception{
        return sqlSession.selectList("Payment_rep.commentList", payment_id);
    }
    
    public int commentInsert(Payment_rep my_name) throws Exception{
    	System.out.println("bbbb: "+ my_name.getId());
        return sqlSession.insert("Payment_rep.commentInsert", my_name);
    }
    
    public int commentUpdate(Payment_rep comment) throws Exception{
        return sqlSession.update("Payment_rep.commentUpdate");
    }
    
    public int commentDelete(int cno) throws Exception{
        return sqlSession.delete("Payment_rep.commentDelete");
    }

}
