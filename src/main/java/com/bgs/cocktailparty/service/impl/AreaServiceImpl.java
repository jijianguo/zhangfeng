package com.bgs.cocktailparty.service.impl;

import com.bgs.cocktailparty.dao.AreaDao;
import com.bgs.cocktailparty.dao.UserDao;
import com.bgs.cocktailparty.pojo.TbHebei;
import com.bgs.cocktailparty.pojo.TbUser;
import com.bgs.cocktailparty.service.AreaService;
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
public class AreaServiceImpl implements AreaService {
    @Resource
    AreaDao areaDao;
    //登陆
    @Override
    public List<TbHebei> selarea(String parentId) {
        return areaDao.selarea(parentId);
    }

    @Override
    public Integer addarea(TbHebei tbHebei) {
        return areaDao.addarea(tbHebei);
    }

    @Override
    public int importcity(List<TbHebei> list) {
        return areaDao.importcity(list);
    }
}
