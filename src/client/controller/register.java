package client.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.entity.Category;
import web.entity.User;
@Transactional
@Controller
@RequestMapping("client")
public class register {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		model.addAttribute("user", new User());
		return "client/register";
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(ModelMap model,@ModelAttribute("user") User user ,HttpServletRequest req,BindingResult errors) throws ServletException, IOException{
		if(user.getName().length()==0) {
			errors.rejectValue("name","user","Vui Lòng Nhập Họ Tên!");	
			
		}
		else if(user.getEmail().length()==0) {
			errors.rejectValue("email","user","Vui Lòng Nhập Gmail!");	
			
		}
		else if(user.getPhone().trim().length()==0) {
			errors.rejectValue("phone","user","Vui Lòng Nhập SĐT");	
			
		}
		else if(user.getPhone().matches("0[0-9]{10}")) {
			errors.rejectValue("phone","user","Số Điện Thoại Không Hợp Lệ");	
			
		}
		else if(user.getAddress().trim().length()==0) {
			errors.rejectValue("address","user","Vui Lòng Nhập Đại Chỉ");	
			
		}
		else if(user.getUsername().trim().length()==0) {
			errors.rejectValue("username","user","Vui Lòng Nhập Tài Khoản");	
			
		}
		else if(user.getPassword().trim().length()==0) {
			errors.rejectValue("password","user","Vui Lòng Nhập Mật Khẩu");	
			
		}
		else if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau");
		}
		else {
			Session session = factory.openSession();
			Transaction t= session.beginTransaction();	
			String hql = "FROM User";
			Query query = session.createQuery(hql);
			List<User> listAcc = query.list();
			for(User i: listAcc) {
				if(user.getUsername().equals(i.getUsername())) {
					
					model.addAttribute("message", "Tài Khoản Đã Có Người Sử Dụng");

				}
				else if(user.getEmail().equals(i.getEmail())) {
					
					model.addAttribute("message", "Email Đã Có Người Sử Dụng");

				}
				else if(user.getPhone().equals(i.getPhone())) {
					
					model.addAttribute("message", "SDT  Đã Có Người Sử Dụng");

				}
				
			}
		
			try {
			
				user.setCreated(new Date());
				user.setUserRole("client");
//				user.setRoleid(0);
				session.save(user);
				t.commit();
				model.addAttribute("message", "Đăng Ký Thành Công");
			}
			catch(Exception ex) {
				t.rollback();
				model.addAttribute("msgRe", "Đăng ký thất bại!!");
				return "client/register";
				
			}
			finally {
				session.close();
			}
			return "client/register";
			
		}
	//	return "client/register";
		return "admin/login";
	}
}
//		Session session=factory.openSession();
//		Transaction t=session.beginTransaction();
//		try 
//		{
//			user.setCreated(new Date());
//			user.setUserRole("client");
//			session.save(user);
//			t.commit();
//			
//			
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			t.rollback();
//			model.addAttribute("msgRe", "Username đã tồn tại, Mời bạn chọn username khác!!");
//			return "client/register";
//		}
//		finally {
//			session.close();
//		}
//	
//		model.addAttribute("msgSu", "Chúc mừng bạn đã tạo tài khoản thành công!<br>Làm phiền bạn đăng nhập lại tại đây!");
//		
//		return "admin/login";
//	}
//	@ModelAttribute("listCategory")
//	public List<Category> getListCate() {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM Category";
//		Query query = session.createQuery(hql);
//		List<Category> list = query.list();
//		return list;
//	}
//
//}
