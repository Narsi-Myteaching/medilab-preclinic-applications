package com.medilab.preclinic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medilab.preclinic.bean.DepartmentBean;
import com.medilab.preclinic.service.MedilabDepartmentService;

@Controller
@RequestMapping("/departments")
public class DepartmentController {

	@Autowired
	private MedilabDepartmentService deptService;
	
	@RequestMapping
	public String viewDepartmentsBoard(Model model) {
		System.out.println("i am in departments");
		List<DepartmentBean> deptBeanList = deptService.findAll();
		model.addAttribute("deptList", deptBeanList);
		return "department/departments";
	}
	
	@RequestMapping("/viewAddDeptPage")
	public String viewAddDeptPage(Model model) {
		System.out.println("i am in viewAddDeptPage");
		model.addAttribute("deptBean", new DepartmentBean());
		return "department/addDepartments";
	}
	//addDept
	@RequestMapping("/addDept")
	public String addDept(@ModelAttribute("deptBean") DepartmentBean deptbean,Model model) {
		System.out.println("deptbean data is:\t"+deptbean.toString());
		deptbean = deptService.save(deptbean);
		
		List<DepartmentBean> deptBeanList = deptService.findAll();
		model.addAttribute("deptList", deptBeanList);
		return "department/departments";
	}
	
	@RequestMapping("/deleteDept/{deptId}")
	public String deleteDepartment(@PathVariable("deptId") int deptId,Model model) {
		System.out.println("deprtment id is:\t"+deptId);
		
		List<DepartmentBean> deptBeanList = deptService.delete(deptId);
		model.addAttribute("deptList", deptBeanList);
		return "department/departments";
	}
	
	@RequestMapping("/editDept/{deptId}")
	public String editDepartmentPage(@PathVariable("deptId") int deptId,Model model) {
		System.out.println("deprtment id is:\t"+deptId);
		DepartmentBean deptBean = deptService.findById(deptId);
		model.addAttribute("deptBean", deptBean);
		return "department/editDepartments";
	}
	
	@RequestMapping("/updateDept")
	public String updateDept(@ModelAttribute("deptBean") DepartmentBean deptbean,Model model) {
		System.out.println("updateDept data is:\t"+deptbean.toString());
		deptbean = deptService.save(deptbean);
		
		List<DepartmentBean> deptBeanList = deptService.findAll();
		model.addAttribute("deptList", deptBeanList);
		return "department/departments";
	}
}
