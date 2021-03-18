package com.travel.controller;

import com.travel.pojo.*;
import com.travel.service.*;
import com.travel.dao.HotelDao;
import com.travel.dao.ScenicDao;
import com.travel.pojo.*;
import com.travel.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @Title: 跳转页面
 * @author: 徐圣皓
 * @create: 2020-01-20 16:02
 * @version: 1.0.0
 **/

@Controller
@RequestMapping(value = "/dist")
public class index {

    @Autowired
    private CarouselService carouselService;

    @Autowired
    private GalleryService galleryService;

    @Autowired
    private ScenicDao scenicDao;

    @Autowired
    private UserService userService;

    @Autowired
    private HotelDao hotelDao;

    @Autowired
    private ParkService parkService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/car-select")
    public String getCarByKey(Model model) {
        List<Park> carList = parkService.getAll();
        model.addAttribute("carList",carList);
        model.addAttribute("carNum",carList.size());
        return "list";
    }
    @RequestMapping("/findCar")
    public String findCar(@RequestParam("status") int status,Model model) {
        model.addAttribute("status",status);
        if(status==-1) {
            List<Park> carList = parkService.getAll();
            model.addAttribute("carList",carList);
        }else {
            List<Park> carList = parkService.getAllByKey(status);
            model.addAttribute("carList",carList);
            model.addAttribute("carNum",carList.size());
        }
        return "list";
    }
    @RequestMapping("/detail")
    public String editCar(@RequestParam("id") int id,Model model){
        Park car = parkService.getById(id);
        model.addAttribute("car",car);
        return "detail";
    }

    @RequestMapping("/buy")
    public String buy(HttpSession session, @RequestParam("id") int id){
        Park car = parkService.getById(id);
        User user= (User) session.getAttribute("user");
        /*int p = user.getPoint();*/
        car.setStatus(1);
        if(parkService.updateCarStatus(car)) {
            Order order =new Order();
            order.setUserid(user.getId());
            order.setPark_id(id);
            order.setTotal(car.getPrice()*0.9);
			if(orderService.addOrder(order)) {
			}
        }
        return "redirect:/dist/showOrder";
    }

    //获取列表
    @RequestMapping("/jiesuan")
    public String jiesuanOrder(@RequestParam("id") int id) {
        Order order = orderService.getById(id);
        order.setStatus(1);
        if(orderService.updateOrderStatus(order)) {
            Park park = parkService.getById(order.getPark_id());
            park.setStatus(0);
            parkService.updateCarStatus(park);
        }
        return "redirect:/dist/showOrder";
    }

    @RequestMapping("/showOrder")
    public String showOrder(Model model,HttpSession session) {
        User user= (User) session.getAttribute("user");
        List<Order> orderList = orderService.getByUserId(user.getId());
        System.out.println(orderService.getByUserId(user.getId()));

        model.addAttribute("orderList",orderList);
        return "orderList";
    }

    @RequestMapping(value = "/view")
    public String view(Model model){

        model.addAttribute("carousels",carouselService.findAll());

        return "page/index";
    }

    @RequestMapping(value = "/login")
    public String login(){
        return "user/login";
    }

    @RequestMapping(value = "/register")
    public String register(){
        return "user/register";
    }


    @RequestMapping(value = "/travel")
    public String page_attrs(Model model,@RequestParam(value = "start" ,defaultValue = "0")Integer start,
                             @RequestParam(value = "limit" ,defaultValue = "6")Integer limit,
                             @RequestParam(value = "price" ,defaultValue = "1")Integer price,
                             @RequestParam(value = "star" ,defaultValue = "1")Integer star){

        start=start<0?0:start;
        System.out.println(price+"==================="+star);
        List<Sort.Order> sort=new ArrayList<>();
        if (star==3){
            System.out.println("price asc star asc");
            sort.add(new Sort.Order(Sort.Direction.ASC,"start"));
        }else if (star==2){
            System.out.println("price desc star desc");
            sort.add(new Sort.Order(Sort.Direction.DESC,"start"));
        }else if (price==2){
            System.out.println("price dsc star asc");
            sort.add(new Sort.Order(Sort.Direction.DESC,"price"));
        }else if (price==3 ){
            System.out.println("price asc star desc");
            sort.add(new Sort.Order(Sort.Direction.ASC,"price"));
        }
        Pageable pageable=PageRequest.of(start,limit,Sort.by(sort));
        Page<Scenic> page=scenicDao.findAll(pageable);
        System.out.println(pageable.getSort()+"排序结果："+page.toString());
        model.addAttribute("attrs",page);
        model.addAttribute("number",page.getNumber());
        model.addAttribute("numberOfElements",page.getNumberOfElements());
        model.addAttribute("size",page.getSize());
        model.addAttribute("totalElements",page.getTotalElements());
        model.addAttribute("totalPages",page.getTotalPages());
        model.addAttribute("first",page.isFirst());
        model.addAttribute("last",page.isLast());
        model.addAttribute("price",price);
        model.addAttribute("star",star);
        return "page/travel";
    }


    @RequestMapping(value = "/hotels")
    public String hotels(Model model,@RequestParam(value = "start" ,defaultValue = "0")Integer start,
                         @RequestParam(value = "limit" ,defaultValue = "6")Integer limit,
                         @RequestParam(value = "price" ,defaultValue = "1")Integer price,
                         @RequestParam(value = "star" ,defaultValue = "1")Integer star){

        start=start<0?0:start;
        List<Sort.Order> sort=new ArrayList<>();
        if (star==3){
            System.out.println("price asc star asc");
            sort.add(new Sort.Order(Sort.Direction.ASC,"star"));
        }else if (star==2){
            System.out.println("price desc star desc");
            sort.add(new Sort.Order(Sort.Direction.DESC,"star"));
        }else if (price==2){
            System.out.println("price dsc star asc");
            sort.add(new Sort.Order(Sort.Direction.DESC,"price"));
        }else if (price==3 ){
            System.out.println("price asc star desc");
            sort.add(new Sort.Order(Sort.Direction.ASC,"price"));
        }
        Pageable pageable=PageRequest.of(start,limit,Sort.by(sort));
        Page<Hotel> page=hotelDao.findAll(pageable);
        System.out.println("排序结果："+page);
        model.addAttribute("attrs",page);
        model.addAttribute("number",page.getNumber());
        model.addAttribute("numberOfElements",page.getNumberOfElements());
        model.addAttribute("size",page.getSize());
        model.addAttribute("totalElements",page.getTotalElements());
        model.addAttribute("totalPages",page.getTotalPages());
        model.addAttribute("first",page.isFirst());
        model.addAttribute("last",page.isLast());
        return "page/hotels";
    }

    @RequestMapping(value = "/gallery")
    public String gallery(Model model){
        model.addAttribute("gallerys",galleryService.findAll());
        return "page/gallery";
    }

    @RequestMapping(value = "/contacts")
    public String contacts()
    {
        return "page/contacts";
    }

    @RequestMapping(value = "/about")
    public String about()
    {
        return "page/about";
    }

    @RequestMapping(value = "/product")
    public String product()
    {
        return "page/product";
    }

    @RequestMapping(value = "/forget")
    public String forget()
    {
        return "user/forget";
    }

    @RequestMapping(value = "/orders")
    public String orders(){
        return "/user/orders";
    }



    @RequestMapping(value = "/info",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    @ResponseBody
    public User info(HttpSession session,Model model){
        User u= (User) session.getAttribute("user");
        User user=userService.findById(u.getId());
        return user;
    }



}
