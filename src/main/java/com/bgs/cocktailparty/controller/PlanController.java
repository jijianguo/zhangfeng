package com.bgs.cocktailparty.controller;

import com.bgs.cocktailparty.pojo.TbPlan;
import com.bgs.cocktailparty.service.PlanService;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-09-05 10:21
 **/
@Controller
@RequestMapping("/plan")
public class PlanController {
    @Autowired
    private PlanService planService;

    @RequestMapping("/addplan")
    public String addplan(Integer userid,String planname, Integer plantable, Integer hbid, @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)Date starttime, @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)Date endtime) {
        Integer i = planService.addplan(userid,planname,plantable,hbid,starttime,endtime);
        if (i>0){
            return "redirect:/jsps/cocktailparty/ForecastData.jsp";
        }else {
            return "redirect:/jsps/cocktailparty/demo/false.jsp";
        }
    }

    @RequestMapping("/findplan")
    @ResponseBody
    public List<TbPlan> findplan(Integer userid, HttpSession httpSession) {
        List<TbPlan> list = planService.findplan(userid);
        return list;
    }


    @RequestMapping("/changeplan")
    @ResponseBody
    public Integer changeplan(Integer id, Integer truetable, Integer oldman, Integer newman, Integer purposeman, String predictedpremium,@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss") Timestamp truetime) {
        Integer i = planService.changeplan(id, truetable, oldman, newman, purposeman, predictedpremium, truetime);
        return i;
    }


}
