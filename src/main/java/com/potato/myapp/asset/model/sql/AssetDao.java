package com.potato.myapp.asset.model.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("assetDao")
public class AssetDao {
	@Resource(name = "sqlSession")
	private SqlSession session;
}
