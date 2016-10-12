package com.ly;

import com.ly.comm.EnDeCode;
import com.ly.sys.service.UserService;
import com.ly.sys.vo.User;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

import static org.nutz.castor.castor.String2Class.map;

/**
 * Created by zhongwei on 9/5/16.
 */
@IocBean
@At("/web")
@Fail("json")
public class WebAction {

    @Inject
    private UserService userService;


    @At
    @Ok("json")
    public Map login(HttpServletRequest request,
                     HttpSession session,
                     @Param("username")String username,
                     @Param("password")String password)
    {
        Map map = new HashMap();
        if (username == null || username.trim().isEmpty()  || password == null || password.trim().isEmpty()){
            map.put("success", false);
            map.put("message", "用户名和密码不能为空");
            return map;
        }

        EnDeCode en = new EnDeCode();
        User user = userService.fetch(Cnd.where("name", "=", username).and("password","=",en.getMD5Str(password.trim())));

        if (user == null) {
            map.put("success", false);
            map.put("message", "用户名或密码错误！请从新输入！");
            return map;
        }

        session.setAttribute("userid",user.getId());
        session.setAttribute("username", username);

        map.put("success", true);
        map.put("userid", user.getId());
        map.put("username",username);
        return map;
    }

}
