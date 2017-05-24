/*
 * ***************************************
 * @source      : BaseDaoSupport.java
 * @description : mybatis 에서 byName없이 SqlSessionDaoSupport 상속받는 클래스
 * ***************************************
 * date				author		 description
 * 2017/05/23		 이지훈		  최초작성
 */


package kr.co.pocari.common.dao.support;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseDaoSupport extends SqlSessionDaoSupport {

	@Override
	@Autowired(required = false)
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	@Autowired(required = false)
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
}
