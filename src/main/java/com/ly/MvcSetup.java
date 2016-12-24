package com.ly;

import com.ly.comm.AppContext;
//import com.ly.comm.CBData;
import org.nutz.ioc.Ioc;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;


public class MvcSetup implements Setup {

	public void destroy(NutConfig arg0) {
		// TODO Auto-generated method stub


		
	}

	public void init(NutConfig config) {
		Ioc ioc = config.getIoc();



//		RedisService redis = AppContext.ioc.get(RedisService.class);
//		redis.set("hi", "wendal");
//		log.debug("redis say again : "  + redis.get("hi"));


		//初始化基础信息数据
//		CBData.getInstance().init();
	}

}
