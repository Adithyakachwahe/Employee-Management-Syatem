package com.adithya.demo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.adithya.demo.bean.Admin;
import com.adithya.demo.bean.Registration;
import com.adithya.demo.bean.User;
import com.adithya.demo.bean.attendance;
import com.adithya.demo.bean.emp;
import com.adithya.demo.dao.AttendanceRepo;
import com.adithya.demo.dao.EmpRepo;
import com.adithya.demo.dao.EmployeeJpaRepo;
import com.adithya.demo.dao.EmployeeRepo;
import com.adithya.demo.dao.RegistrationJpaRepo;
import com.adithya.demo.dao.connection;

		
		
@RestController
public class Resources 
{
	
	@Autowired
	EmpRepo repo1;
	
	@Autowired
	AttendanceRepo repo2;
	
	@Autowired
	EmployeeJpaRepo emprepo;
	
	@Autowired
	RegistrationJpaRepo regrepo;
	
	@RequestMapping("create")
	public ModelAndView Register(User user) throws ClassNotFoundException, SQLException
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject(user);
		System.out.println(user.getEno());
		System.out.println(user.getPassword());
		
		EmployeeRepo obj = new EmployeeRepo();
		int c = (int) emprepo.count();
		String sqlString = "insert into empmansys.user values("+ c+1 +","+ "\" "+user.getEno()+ "\"" + "," +"\""+ user.getPassword()+"\"" + ");";
		int out = obj.insert("empmansys.user", sqlString);
		if(out==1)
		{
			System.out.println("created");
			mv.setViewName("admin-index.jsp");
		}
		else if(out==0)
			mv.setViewName("login-admin.jsp");
		return mv;
	}
	
//	login Start
	@RequestMapping("/")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("login.jsp");
		return mv;
	}
	@RequestMapping("Login")
	
	public ModelAndView getlogin(User user ,HttpServletRequest r) throws ClassNotFoundException, SQLException
	{
		HttpSession session =r.getSession();
		session.setAttribute("sts_id", 0);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject(user);
		System.out.println(user.getEno());
		System.out.println(user.getPassword());
		
		EmployeeRepo obj = new EmployeeRepo();
		String sqlString = "select eid from empmansys.user where eno= "+"\""+ user.getEno()+"\"" +" and password="+ "\""+user.getPassword()+"\"" +";";
		String sqlString1 = "select rid from empmansys.user where eno= "+"\""+ user.getEno()+"\"" +" and password="+ "\""+user.getPassword()+"\"" +";";
		int id = obj.getId(sqlString);
		int rid = obj.getId(sqlString1);
		if(id!=0 && rid!=0) {
			mv.addObject("eid", id);
			mv.addObject("rid", rid);
			
			session.setAttribute("eid", id);
			session.setAttribute("rid", rid);
			mv.setViewName("index.jsp");
		}
		else {
			mv.clear();
			mv.setViewName("login.jsp");
		}
		return mv;
		
		
	}
	
//	login End
	
//	Admin-login Start
	@RequestMapping("admin-login")
	public ModelAndView adminlogin() 
	{
		ModelAndView mv = new ModelAndView("login-admin.jsp");
		return mv;
	}
	
	@RequestMapping("check")
	public ModelAndView getadminlogin(Admin admin) throws ClassNotFoundException, SQLException
	{
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject(admin);
		System.out.println(admin.getAname());
		System.out.println(admin.getPassword());
		
		EmployeeRepo obj = new EmployeeRepo();
		String sqlString = "select aid from empmansys.admin where aname= "+"\""+ admin.getAname() +"\"" +" and password="+ "\""+admin.getPassword()+"\"" +";";
	
		
		int id = obj.getId(sqlString);
		if(id!=0) {
			mv.addObject("aid", id);
			mv.setViewName("index-admin.jsp");
		}
		else {
			mv.clear();
			mv.setViewName("login-admin.jsp");
		}
		
		return mv;
	}
	
	
//	Admin-login End
	
//	Admin-add-emp Start
	
	@RequestMapping("add-emp")
	public ModelAndView empform() 
	{
		ModelAndView mv = new ModelAndView("registration-form.jsp");
		return mv;
	}
	
	@RequestMapping("register")
	public ModelAndView register(Registration reg ) throws SQLException, ClassNotFoundException 
	{
		ModelAndView mv = new ModelAndView();
		
		EmployeeRepo obj = new EmployeeRepo();
		int c = (int) regrepo.count();
		String sqlString = "insert into empmansys.registration values("+ (c+1) +","+ "\" "+reg.getFname()+ "\"" + "," +"\""+ reg.getLname()+"\"" +  "," +"\""+ reg.getPhno()+"\""+ "," +"\""+ reg.getEmail()+"\""+ "," +"\""+ reg.getDob()+"\""+ "," +"\""+ reg.getDept()+"\""+ "," +"\""+ reg.getAddress()+"\""+ "," +"\""+ reg.getTech()+"\""+ "," + reg.getSal()+");";
		int out = obj.insert("empmansys.registration", sqlString);
		if(out==1)
		{
			mv.addObject("reg_id", (c+1));
			mv.addObject("Eid", "JS"+(c+1)+reg.getFname());
			mv.addObject("pass", "JS"+(c+1));
			mv.setViewName("eno-generator.jsp");
			int c1 = (int) emprepo.count();
			c1=c1+1;
			
			String idString = "JS"+(c+1)+reg.getFname();
			int regid = (c+1);
			String passString = "JS"+(c+1);
			
			String sql =" insert into empmansys.user values("+c1+" ,\" "+ idString +" \","+" \" "+passString+"\" "+","+"\""+regid+"\""+"); ";
			
			String sql2 =" insert into empmansys.emp values("+c1+" ,\" "+ idString +" \","+" \" "+reg.getDept()+"\" "+","+"\""+reg.getTech()+"\""+ ","+ reg.getSal()+"); ";
			
			obj.insert("empmansys.emp", sql2);
			
			obj.insert("empmansys.user", sql);
			if(out==1)
				System.out.println("updated in login table");
			else {
				System.out.println("error");
			}
		}
		else if(out==0)
			mv.setViewName("error.jsp");
		return mv;
	}
	
//	Admin-add-emp End
	
	
//	Myprofile Start
	@RequestMapping("myprofile")
	public ModelAndView myprofile()
	{
		ModelAndView mv = new ModelAndView("my-profile.jsp");
		return mv;

	}
//	Myprofile End

	
//	leave Start
	@RequestMapping("leave")
	public ModelAndView leaveuser()
	{
		ModelAndView mv = new ModelAndView("leave-user.jsp");
		return mv;

	}
	
	@RequestMapping("leave-post")
	public ModelAndView getleave(@RequestParam("eno") String enoString , HttpServletRequest req) throws SQLException, ClassNotFoundException
	{
		EmployeeRepo r = new EmployeeRepo();
		String sqlString = "select eid from empmansys.user where eno="+"\""+ enoString+"\"" +";";
		int id = r.getId(sqlString);
		System.out.println(enoString );
		System.out.println("id"+id);
		HttpSession session =req.getSession();
		session.setAttribute("sts_id", id);
		
		String sqlString2 = "insert into empmansys.leave values("+ id +","+"\""+ enoString + "\""+ ",\"not approved\");";
		int out =  r.insert("empmansys.leave", sqlString2);
		System.out.println(out+ " row added in leave table");
		ModelAndView mv = new ModelAndView("leave-user.jsp");
		return mv;

	}
	
	@RequestMapping("status")
	public ModelAndView status() throws SQLException, ClassNotFoundException
	{
		ModelAndView mv =new ModelAndView();
			mv.setViewName("status.jsp");
		return mv;

	}
	
	
	@RequestMapping("approve-leave")
	public ModelAndView callapprovejsp(HttpServletRequest rq) 
	{
		ModelAndView mv =new ModelAndView();
		mv.setViewName("status-admin.jsp");
		return mv;
	}
	
	@RequestMapping("confirming")
	public ModelAndView confirm(@RequestParam("str") String conf_id) throws SQLException, ClassNotFoundException 
	{
		
		ModelAndView mv =new ModelAndView();
		String sqlString = "update empmansys.leave set status=\"approved\" where eid="+conf_id+";";
		EmployeeRepo r = new EmployeeRepo();
		int i = r.insert("empmansys.leave", sqlString);
		System.out.println(i+" row updated");
		mv.setViewName("status-admin.jsp");
		return mv;
	}

	
	
//	leave End
	
//	logout Start
	@RequestMapping("logout")
	public ModelAndView logout(HttpServletRequest r)
	{
		HttpSession session =r.getSession();
    	session.removeAttribute("eid");
   		session.removeAttribute("rid");
		ModelAndView mv = new ModelAndView("login.jsp");
		return mv;

	}
//	logout End
	
	
	
//	connect
	@RequestMapping("first")
	public ModelAndView test()
	{
		ModelAndView mv = new ModelAndView("index-admin.jsp");
		return mv;
	}
	
	
	@RequestMapping("/add")
	public ModelAndView show_attendance(@RequestParam("date") String date)
	{
	
		List<emp> emp1 = new ArrayList<emp>();
		emp1= repo1.findAll();
		List<attendance> att = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		
		
		for(emp e1 : emp1)
		{
			int eid = e1.getEid();
			String name=e1.getEname();
			String status = "Pending";
			
			attendance a1 = new attendance(eid,date,name,status);
			att.add(a1);
			
		}
		
		for(attendance a : att)
		{
			repo2.save(a);
		}
		
		mv.addObject("date", date);
		mv.setViewName("add_date.jsp");
	   
		return mv;
		
	}
	
	
	@RequestMapping("/mark")
	public ModelAndView mark(@RequestParam("eid") int eid1, @RequestParam("date") String date1, @RequestParam("radio") String radio1)
	{
		connection con = new connection();
		
		con.update(eid1, date1, radio1);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("date", date1);
		mv.setViewName("add_date.jsp");
	   
		
		return mv;
	
	}
	
	@RequestMapping("/display")
	public ModelAndView adding()
	{
		
		ModelAndView mv = new ModelAndView("display.jsp");
		return mv;

		
	}
	
	@RequestMapping("updateSalary")
	public ModelAndView updateSalary(@RequestParam("eid") int eid1, @RequestParam("salary") int salary)
	{
		connection con = new connection();
		
		con.updateSalary(eid1, salary);
		
		ModelAndView mv = new ModelAndView("updatesalary.jsp");
		return mv;
		
		
	}
	
	
}
