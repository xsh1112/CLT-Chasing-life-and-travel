package com.travel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.travel.pojo.Order;
@Mapper
public interface OrderMapper {
	

	@Select("select o.status,u.plate_num,c.price,o.code,o.createDate,o.id,o.total,u.name user_name,u.mobile,c.name park_name from park_orders o,User u,Park c where o.userid=u.id and o.park_id=c.id")
	List<Order> findAllOrder();
	
	//查询信息
	@Select("select o.status,u.plate_num,c.price,o.code,o.createDate,o.id,o.total,u.name user_name,u.mobile,c.name park_name from park_orders o,User u,Park c where o.userid=u.id and o.park_id=c.id and (u.plate_num like #{key} or u.name like #{key})")
	List<Order> findByKey(@Param("key") String key);
	
	//查询信息
	@Select("select o.status,u.plate_num,c.price,o.code,o.createDate,o.id,o.total,u.name user_name,u.mobile,c.name park_name from park_orders o,User u,Park c where o.userid=u.id and o.park_id=c.id and userid=#{id} order by createDate desc")
	List<Order> findByUserId(@Param("id") String id);
	
	@Select("select * from park_orders where id = #{id}")
	Order findById(@Param("id") int id);
	
	//添加信息
	@Insert("insert into park_orders(userid,park_id,total,code,createDate,status) values(#{userid},#{park_id},#{total},UUID(),SYSDATE(),0)")
    public void insertOrder(Order order);
	
	//删除信息
	@Delete("delete from park_orders where id=#{id}")
	public void deleteOrder(int id);
	
	
	//修改信息
	@Update("update park_orders set status=#{status} where id=#{id}")
	public void updateStatus(Order order);
}
