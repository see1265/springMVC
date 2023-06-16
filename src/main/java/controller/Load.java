package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.Dao;
import dto.Dto;

@Controller
public class Load {
//	@RequestMapping("/insert")
//public ModelAndView insert() {
//	ModelAndView andView= new ModelAndView();
//	andView.addObject("msg","data insertt");
//	return andView;
//			
//  }
	
	@RequestMapping("/insert1")
	public ModelAndView insertmvc(@ModelAttribute Dto dto,Dao dao ) {
		dao.save(dto);
		ModelAndView andView= new ModelAndView("home.jsp");
	    andView.addObject("msg","data inserted");
		return andView;
	}
	@RequestMapping("/fetchall")
	public ModelAndView featchall(Dao dao) {
		List<Dto>list=dao.featchall();
		ModelAndView view=new ModelAndView("download.jsp");
		view.addObject("list", list);
		return view;
	}
//	@RequestMapping("/delete")
//	public ModelAndView deletemvc(Dao dao,@RequestParam("id") int id) {
//		dao.delete(dto);
//		ModelAndView andView= new ModelAndView("delete.jsp");
//	    andView.addObject("msg","data delete");
//		return andView;
//	}
	@RequestMapping("/delete")// using ModelAttribute we featch all the detailes
	public ModelAndView deletemvc(@ModelAttribute Dto dto,Dao d1) {
		int id= dto.getId();
		String messge=d1.delete(id);
		
		ModelAndView andView= new ModelAndView("insert.jsp");
	    andView.addObject("msg",messge);
		return andView;
	}

	
	@RequestMapping("/update")
	public ModelAndView updateById(@RequestParam int id ,@ModelAttribute Dao dao) {   //using RequestParam only one value we get i.e id 
		System.out.println(id);
		Dto d1=dao.featchById(id);
		ModelAndView andView=new ModelAndView("update.jsp");
		andView.addObject("obj", d1);
		return andView;
	}
	@RequestMapping("/emvc")
	public void updateAll(@ModelAttribute Dto dto,Dao dao) {
		dao.update(dto);
	}
}










