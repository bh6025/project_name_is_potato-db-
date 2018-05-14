package com.potato.myapp.asset.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.potato.myapp.asset.model.sql.AssetDao;

@Service("assetService")
public class AssetService {
	@Resource(name = "assetDao")
	private AssetDao dao;
}
