package com.bgs.cocktailparty.service;

import com.bgs.cocktailparty.pojo.TbUser;

import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:38
 **/
public interface UserService {
    //登陆
    TbUser login(TbUser tbUser);

    List<TbUser> findareauser(String id);

    Integer adduser(TbUser tbUser);
}
