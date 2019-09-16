package com.bgs.cocktailparty.service.impl;

import com.bgs.cocktailparty.dao.PlanDao;
import com.bgs.cocktailparty.pojo.TbPlan;
import com.bgs.cocktailparty.service.PlanService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:41
 **/
@Service
public class PlanServiceImpl implements PlanService {
    @Resource
    PlanDao planDao;

    @Override
    public Integer addplan(Integer userid,String planname, Integer plantable, Integer hbid, Date starttime, Date endtime) {
        return planDao.addplan(userid,planname,plantable,hbid,starttime,endtime);
    }

    @Override
    public List<TbPlan> findplan(Integer userid) {
        return planDao.findplan(userid);
    }

    @Override
    public Integer changeplan(Integer id, Integer truetable, Integer oldman, Integer newman, Integer purposeman, String predictedpremium, Timestamp truetime) {
        return planDao.changeplan(id, truetable, oldman, newman, purposeman, predictedpremium, truetime);
    }


}
