package com.travel.mapper;

import java.util.List;

import com.travel.pojo.Park;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface ParkMapper {
	

	@Select("select * from Park")
	List<Park> findAllPark();
	
	@Select("select * from Park where  status = #{status}")
	List<Park> findAllParkByKey(@Param("status") int status);
	
	@Select("select * from Park where  name like #{key}")
	List<Park> findParkByKey(@Param("key") String key);
	
	@Select("select * from Park where id=#{id}")
	Park findCarById(@Param("id") int id);
	
	//添加信息
	@Insert("insert into Park(name,price,status) values(#{name},#{price},0)")
    public void insertCar(Park car);
	
	//删除信息
	@Delete("delete from Car where id=#{id}")
	public void deleteCar(int id);
	
	@Update("update Park set status=#{status} where id=#{id}")
	public void updateCarStatus(Park car);
	
	//修改信息
	@Update("update Park set name=#{name},price=#{price} where id=#{id}")
	public void updateCar(Park car);
}
