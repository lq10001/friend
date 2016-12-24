package com.ly;

import org.beetl.ext.nutz.BeetlViewMaker;
import org.nutz.mvc.annotation.*;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

@IocBy(type = ComboIocProvider.class, args = {
		"*js", "ioc/",
		"*anno", "com.ly"
		})
@SetupBy(MvcSetup.class)
@Views({BeetlViewMaker.class})
@Ok("json")
@Fail("json")
@Encoding(input = "UTF-8", output = "UTF-8")
public class MainModule {

}
