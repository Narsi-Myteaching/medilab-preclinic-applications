package com.medilab.preclinic.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medilab.preclinic.bean.DepartmentBean;
import com.medilab.preclinic.bean.DoctorBean;
import com.medilab.preclinic.service.MedilabDepartmentService;
import com.medilab.preclinic.service.MedilabDoctorService;

@Controller
@RequestMapping("/doctors")
public class DoctorController {

	@Autowired
	private MedilabDoctorService doctService;
	
	@Autowired
	private MedilabDepartmentService deptService;
	
	@RequestMapping
	public String viewDoctorBoard(Model model) {
		System.out.println("i am in doctor");
		List<DoctorBean> doctBeanList = doctService.findAll();
		model.addAttribute("doctBeanList", doctBeanList);
		return "doctor/doctors";
	}
	
	@RequestMapping("/addDoctorPage")
	public String addDoctorPage(Model model) {
		System.out.println("i am in viewDoctorDeptPage");
		model.addAttribute("doctBean", new DoctorBean());
		List<DepartmentBean> deptBeanList = deptService.findAll();
		List<String> departmentList = new ArrayList<String>();
		if(deptBeanList != null && deptBeanList.size() >0) {
			deptBeanList.stream().forEach(dept->{
				departmentList.add(dept.getName());
			});
		}
		model.addAttribute("deptBeanList", departmentList);
		return "doctor/addDoctors";
	}
	
	@RequestMapping("/addDoctor")
	public String addDoctor(@ModelAttribute("doctBean") DoctorBean doctBean,Model model) {
		System.out.println("doctBean data is:\t"+doctBean.toString());
		doctBean = doctService.save(doctBean);
		List<DoctorBean> doctBeanList = doctService.findAll();
		model.addAttribute("doctBeanList", doctBeanList);
		return "doctor/doctors";
	}
	@RequestMapping("/delete/{doctId}")
	public String deleteDoctor(@PathVariable("doctId") int doctId,Model model) {
		System.out.println("doctBean data is:\t"+doctId);
		List<DoctorBean> doctBeanList  = doctService.delete(doctId);
		model.addAttribute("doctBeanList", doctBeanList);
		return "doctor/doctors";
	}
	
	@RequestMapping("/edit/{doctId}")
	public String editDoctor(@PathVariable("doctId") int doctId,Model model) {
		System.out.println("doctBean data is:\t"+doctId);
		DoctorBean doctBean  = doctService.findById(doctId);
		model.addAttribute("doctBean", doctBean);
		List<DepartmentBean> deptBeanList = deptService.findAll();
		List<String> departmentList = new ArrayList<String>();
		if(deptBeanList != null && deptBeanList.size() >0) {
			deptBeanList.stream().forEach(dept->{
				departmentList.add(dept.getName());
			});
		}
		model.addAttribute("deptBeanList", departmentList);
		return "doctor/editDoctors";
	}
	
	@RequestMapping("/updateDoctor")
	public String updateDoctor(@ModelAttribute("doctBean") DoctorBean doctBean,Model model) {
		System.out.println("doctBean data is:\t"+doctBean.toString());
		doctBean = doctService.update(doctBean);
		List<DoctorBean> doctBeanList = doctService.findAll();
		model.addAttribute("doctBeanList", doctBeanList);
		return "doctor/doctors";
	}
}
