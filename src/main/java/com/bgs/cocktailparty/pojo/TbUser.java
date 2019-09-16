package com.bgs.cocktailparty.pojo;

import lombok.Data;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:13
 **/
@Data
public class TbUser {
    private Integer id;//id
    private String usercode;//账号
    private String password;//密码
    private String username;//用户名称
    private Integer level;//用户等级
    private Integer HBid;//地区表外键
    private Integer planid;//活动表外键
}
