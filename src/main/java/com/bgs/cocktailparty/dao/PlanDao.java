package com.bgs.cocktailparty.dao;

import com.bgs.cocktailparty.pojo.TbPlan;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-09-05 10:28
 **/
@Mapper
public interface PlanDao {
    Integer addplan(@Param("userid")Integer userid,@Param("planname") String planname, @Param("plantable")Integer plantable, @Param("hbid")Integer hbid, @Param("starttime")Date starttime, @Param("endtime")Date endtime);

    List<TbPlan> findplan(Integer userid);

    Integer changeplan(@Param("id")Integer id, @Param("truetable")Integer truetable, @Param("oldman")Integer oldman, @Param("newman")Integer newman, @Param("purposeman")Integer purposeman, @Param("predictedpremium")String predictedpremium, @Param("truetime") Timestamp truetime);

}
