package client.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.sf.ehcache.hibernate.HibernateUtil;
import web.entity.*;

@Transactional
@Controller
public class WelcomeController {
	User user = new User();
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;

	@RequestMapping("trang-chu")
	public String home(ModelMap model, HttpSession session) {
		Session sessionn = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = sessionn.createQuery(hql);
		List<Product> listPro = query.list();
		model.addAttribute("listPro", listPro);
		model.addAttribute("listProduct", getListNav(0, 8));
		model.addAttribute("totalItem", totalItem() / 8);
		//HashMap<Integer, Cart> cartItems = new HashMap<>();
		//session.setAttribute("myCartItems", cartItems);
		//session.setAttribute("myCartTotal", totalPrice(cartItems));
		//session.setAttribute("myCartNum", cartItems.size());
		return "client/index";

	}
	
	@RequestMapping(value = "{page}", method = RequestMethod.GET)
	public String viewProductListByPage(ModelMap model, HttpSession session, @PathVariable("page") int page) {
		model.addAttribute("listProduct", getListNav((page - 1) * 8, 8));
		model.addAttribute("totalItem", totalItem() / 8);
		return "client/index";
	}
	
	

	@RequestMapping("client/account")
	public String account(HttpSession session) {
		return "client/account";
	}
	
	
	@RequestMapping("contact")
	public String account() {
		return "client/contact";
	}
	
	

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String viewlogin(ModelMap model, HttpSession session) {
		user = (User) session.getAttribute("user");
		if (user == null) {
			model.addAttribute("user", new User());
			return "admin/login";
		}

		return "redirect:client/account.htm";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String viewlogin(ModelMap model, HttpSession session, @ModelAttribute("user") User user) {

		Session sessionn = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = sessionn.createQuery(hql);
		List<User> listAcc = query.list();

		for (User ktra : listAcc) {
			if (user.getUsername().equals(ktra.getUsername()) && user.getPassword().equals(ktra.getPassword())) {
				this.user = ktra;
				if (this.user.getUserRole().equals("admin")) {

					session.setAttribute("user", this.user);
					return "redirect:/admin/quan-ly.htm";
				} else {

					session.setAttribute("user", this.user);

					return "redirect:/trang-chu.htm";

				}
			}

		}

		model.addAttribute("errorLogin", "Sai thông tin đăng nhập!");
		return "admin/login";

	}

	@RequestMapping("client/logout")
	public String logout(HttpSession session, HttpServletRequest rq) {
		session = rq.getSession();
		User u = new User();
		u = (User) session.getAttribute("user");
		System.out.println(u.getUsername() + " - " + u.getPassword() + "-" + u.getId());
		session.removeAttribute("user");
		return "redirect:/trang-chu.htm";

	}
	@RequestMapping("client/404")
	public String error() {
		return "client/404";

	}

	public float totalPrice(HashMap<Integer, Cart> cartItems) {
		float count = 0;
		for (Map.Entry<Integer, Cart> list : cartItems.entrySet()) {
			count += list.getValue().getProduct().getPrice() * list.getValue().getQuantity();
		}
		return count;
	}
	
	@RequestMapping(value = "client/single/{id}")
	public String viewProduct(ModelMap model,@PathVariable("id") int id) {
	      model.addAttribute("product", findProById(id));
	      return "client/single";
	}

	public Product findProById(int id) {
	    	Session session = factory.getCurrentSession();
			String hql = "FROM Product p WHERE p.id LIKE :id ";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			Product obj = (Product) query.uniqueResult();
			return obj;
	}
	
	@ModelAttribute("listCategory")
	public List<Category> getListCate() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> list = query.list();
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	// phân trang
	
	public int totalItem() {
		// TODO Auto-generated method stub
		Session sessionn = factory.getCurrentSession();
		String hql = "SELECT COUNT(p) FROM Product p";
		Query query = sessionn.createQuery(hql);
		Long count = (Long) query.uniqueResult();
		return count.intValue();
	}

	public List<Product> getListNav(int i, int j) {

		Session sessionn = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = sessionn.createQuery(hql);
		query.setFirstResult(i);
		query.setMaxResults(j);
		List<Product> listPro = query.list();
		return listPro;
	}

	
	
	
	
	
	
	
	
	
	
	
}