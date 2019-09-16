package com.bgs.cocktailparty.service;

import com.bgs.cocktailparty.pojo.TbPlan;
import org.springframework.format.annotation.DateTimeFormat;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-09-05 10:22
 **/
public interface PlanService {

    Integer addplan(Integer userid,String planname, Integer plantable, Integer hbid, Date starttime, Date endtime);

    List<TbPlan> findplan(Integer userid);

    Integer changeplan(Integer id, Integer truetable, Integer oldman, Integer newman, Integer purposeman, String predictedpremium, Timestamp truetime);

}
