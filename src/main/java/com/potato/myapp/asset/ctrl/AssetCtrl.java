package com.potato.myapp.asset.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.potato.myapp.asset.service.AssetService;

@Controller
@RequestMapping("/asset")
public class AssetCtrl {
	@Resource(name ="assetService")
	private AssetService service;
}
