package com.travel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.travel.pojo.User;
@Mapper
public interface UserMapper {
	
	//添加信息
	@Insert("insert into User(name,phone,plate_num,password,createDate,stauts) values(#{name},#{phone},#{plate_num},#{password},SYSDATE(),0)")
    public void insertUsers(User user);
	
	//删除信息
	@Delete("delete from User where id=#{id}")
	public void deleteUserById(int id);
	
	//修改信息
	@Update("update user set stauts=#{stauts} where id=#{id}")
	public void updateUserStauts(@Param("id") int id,@Param("stauts") int stauts);
	
	@Update("update user set point=#{point} where id=#{id}")
	public void updateUserPoint(User user);
	
	@Update("update user set phone=#{phone},plate_num=#{plate_num} where id=#{id}")
	public void updateUser(User user);
	@Update("update user set password=#{password} where id=#{id}")
	public void updateUserPwd(User user);
	//查询信息
	@Select("select * from user where name like #{name}")
	List<User> findByName(@Param("name") String name);
	
	@Select("select * from user")
	List<User> findAllUser();
	
	@Select("select * from user where id=#{id}")
	User findUserById(@Param("id") String id);
	
	@Select("select * from user order by point desc")
	List<User> findAllPoint();
	
	@Select("select * from user where name like #{name} order by point desc")
	List<User> findPointByName(@Param("name") String name);
	
	//登陆使用
	@Select("select * from user where name=#{name} and password = #{password}")
	List<User> findUserByNameAndPwd(@Param("name") String adminName,@Param("password") String password);
}
