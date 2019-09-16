package com.bgs.cocktailparty.controller;

import com.bgs.cocktailparty.pojo.TbHebei;
import com.bgs.cocktailparty.pojo.TbUser;
import com.bgs.cocktailparty.service.AreaService;
import com.bgs.cocktailparty.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: cocktailparty
 * @description:
 * @author: jishengnan
 * @create: 2019-08-28 14:42
 **/
@Controller
@RequestMapping("/area")
public class AreaController {
    @Autowired
    private AreaService areaService;

    @RequestMapping("/selarea")
    @ResponseBody
    public List<TbHebei> selarea(String parentId) {
        List<TbHebei> list = areaService.selarea(parentId);
        return list;
    }

    @RequestMapping("/addarea")
    @ResponseBody
    public Integer addarea(TbHebei tbHebei) {
        Integer a = areaService.addarea(tbHebei);
        return a;
    }

    @RequestMapping("/importcity")
    public String add(@RequestParam("file") MultipartFile file) throws IOException {
        InputStream inputStream = file.getInputStream();
        BufferedReader fileReader = new BufferedReader(new InputStreamReader(inputStream) );
        String aaa = null;
        List<TbHebei> list = new ArrayList<>();
        while ((aaa = fileReader.readLine()) != null) {
            String[] split = aaa.split((","));
            String substring = split[0];
            String substring1 = split[1];
            TbHebei tbHebei = new TbHebei();
            tbHebei.setName(substring);
            tbHebei.setParentId(substring1);
            list.add(tbHebei);
        }
        int i = areaService.importcity(list);
        if (i!=0){
            return "redirect:/jsps/cocktailparty/demo/success.jsp";
        }else {
            return "redirect:/jsps/cocktailparty/demo/false.jsp";
        }
    }

}
