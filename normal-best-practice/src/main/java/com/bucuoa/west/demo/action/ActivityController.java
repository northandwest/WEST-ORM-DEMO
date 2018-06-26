package com.bucuoa.west.demo.action;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bucuoa.west.demo.entity.Act;
import com.bucuoa.west.demo.service.ActService;
/**
 * 活动
 * @author jake
 *
 */
@Controller
@RequestMapping(value = "/activity")
public class ActivityController {
	
	@Autowired
	private ActService actService;
	
	@RequestMapping(value = "/add")
	public String add(RedirectAttributes redirectAttributes,Act entity) {
		

		return "/activity/add";
	}
	
	@RequestMapping(value = "/list/{placeId}")
	@ResponseBody
	public String list(@PathVariable("placeId") Long placeId) {
		
		List<Map<String, Object>> list = actService.getList(placeId);
		
		for(Map<String,Object> map :list)
		{
			System.out.println(map.get("title"));
			
		}
		
		
		return "{name:'王府井'}";
	}
	
	@RequestMapping(value = "/list2/{placeId}")
	@ResponseBody
	public String list2(@PathVariable("placeId") Long placeId) {
		
		List<Act> list = actService.getListByBean(placeId);
		
		for(Act act :list)
		{
			System.out.println(act.getTitle());
			
		}
		
		return "{name:'王府井'}";
	}
	
	@RequestMapping(value = "/save")
	public String save(RedirectAttributes redirectAttributes) {
		Act entity = new Act();
		entity.setPlaceName("半亩园");
		entity.setTitle(new Date().toLocaleString()+"-"+entity.getPlaceName());
		entity.setCreater("");
		entity.setCreateTime(new Date());
		entity.setUuid(getUUID());
		int place_id = new Random().nextInt(100);
		entity.setPlaceId(place_id);
		try {
			Object idx = actService.saveEntity(entity);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		long nanoTime = System.nanoTime();
		System.out.println(""+nanoTime);
		
//		System.out.println("--->"+count.get());
		return "redirect:list";
	}
	
//	private final AtomicLong count = new AtomicLong(0);
	
	@RequestMapping(value = "/save2")
	@ResponseBody
	public String save2(RedirectAttributes redirectAttributes) {
		Act entity = new Act();
		entity.setPlaceName("半亩园");
		entity.setTitle(new Date().toLocaleString()+"-"+entity.getPlaceName());
		entity.setCreater("");
		entity.setCreateTime(new Date());
		entity.setUuid(getUUID());
		int place_id = new Random().nextInt(15);
		entity.setPlaceId(place_id);
		try {
			Object idx = actService.saveEntity(entity);
			
//			System.out.println("id======>"+idx);
			return idx.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	private String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	


}