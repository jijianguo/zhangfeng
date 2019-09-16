package com.bgs.cocktailparty.service;

import com.bgs.cocktailparty.pojo.TbHebei;
import com.bgs.cocktailparty.pojo.TbUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:38
 **/
public interface AreaService {
    //左树查地区
    List<TbHebei> selarea(String parentId);

    Integer addarea(TbHebei tbHebei);

    int importcity(List<TbHebei> list);
}
