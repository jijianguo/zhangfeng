package com.bgs.cocktailparty.controller;

import com.bgs.cocktailparty.pojo.TbUser;
import com.bgs.cocktailparty.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.lang.reflect.TypeVariable;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:42
 **/
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    //登陆
    @RequestMapping("/login")
    public String login(TbUser tbUser, HttpSession httpSession){
        TbUser user = userService.login(tbUser);
        if (null != user ){
            httpSession.setAttribute("user",user);
            return "redirect:/jsps/cocktailparty/cocktailparty.jsp";
        }else {
            return "login";
        }
    }

    //退出
    @RequestMapping("/loginout")
    public String loginout(HttpSession httpSession) {
        //清理缓存
        httpSession.removeAttribute("user");
        httpSession.invalidate();
        return "redirect:/jsps/login.jsp";
    }

    @RequestMapping("/findareauser")
    @ResponseBody
    public List<TbUser> findareauser(String id) {
        List<TbUser> list = userService.findareauser(id);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getUsername());
        }
        return list;
    }
    @RequestMapping("/adduser")
    @ResponseBody
    public Integer adduser(TbUser tbUser) {
        Integer i = userService.adduser(tbUser);
        return i;
    }
}
