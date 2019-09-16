package com.bgs.cocktailparty.dao;

import com.bgs.cocktailparty.pojo.TbHebei;
import com.bgs.cocktailparty.pojo.TbUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:37
 **/
@Mapper
public interface AreaDao {
    //左树查地区
    List<TbHebei> selarea(@Param("parentId")String parentId);

    Integer addarea(TbHebei tbHebei);

    int importcity(List<TbHebei> list);
}
