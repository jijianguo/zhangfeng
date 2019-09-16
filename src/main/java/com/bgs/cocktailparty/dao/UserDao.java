package com.bgs.cocktailparty.dao;

import com.bgs.cocktailparty.pojo.TbUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:37
 **/
@Mapper
public interface UserDao {
    //登陆
    TbUser login(TbUser tbUser);

    List<TbUser> findareauser(String id);

    Integer adduser(TbUser tbUser);
}
