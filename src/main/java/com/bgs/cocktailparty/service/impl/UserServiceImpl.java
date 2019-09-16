package com.bgs.cocktailparty.service.impl;

import com.bgs.cocktailparty.dao.UserDao;
import com.bgs.cocktailparty.pojo.TbUser;
import com.bgs.cocktailparty.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:41
 **/
@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserDao userDao;
    //登陆
    @Override
    public TbUser login(TbUser tbUser) {
        return userDao.login(tbUser);
    }

    @Override
    public List<TbUser> findareauser(String id) {
        return userDao.findareauser(id);
    }

    @Override
    public Integer adduser(TbUser tbUser) {
        return userDao.adduser(tbUser);
    }
}
