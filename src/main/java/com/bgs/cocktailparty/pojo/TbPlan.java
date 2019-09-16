package com.bgs.cocktailparty.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-09-03 08:19
 **/
@Data
public class TbPlan {
    private Integer id;//id
    private Integer picid;//图片id
    private Integer userid;//用户表id
    private Integer hbid;//地区id
    private Integer ifplan;//是否是计划中
    private Integer plantable;//计划召开桌数
    private Integer truetable;//实际召开桌数
    private Integer newman;//新客户
    private Integer oldman;//老客户
    private Integer purposeman;//意向客户
    private String predictedpremium;//预估保费
    private String planname;//计划名称
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Timestamp entrytime;//录入时间
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Timestamp starttime;//开始时间
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Timestamp endtime;//结束时间
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Timestamp truetime;//召开时间
}
