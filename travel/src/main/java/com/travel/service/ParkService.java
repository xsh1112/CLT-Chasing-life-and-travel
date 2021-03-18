package com.travel.service;

import com.travel.mapper.ParkMapper;
import com.travel.pojo.Park;
import com.travel.pojo.Scenic;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class ParkService {

	@Resource
	private ParkMapper parkMapper;
	
	//获取全部
	public List<Park> getAll() {
		// TODO Auto-generated method stub
		return parkMapper.findAllPark();
	}
	
	public List<Park> getAllByKey(int status) {
		// TODO Auto-generated method stub
		return parkMapper.findAllParkByKey(status);
	}
	
	public List<Park> getByKey(String key) {
		// TODO Auto-generated method stub
		return parkMapper.findParkByKey("%"+key+"%");
	}

	//查询
	public Park getById(int id) {
		return parkMapper.findCarById(id);
	}
	//通过id修改
	public boolean updateCar(Park car) {
		try {
			parkMapper.updateCar(car);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	public boolean updateCarStatus(Park car) {
		try {
			parkMapper.updateCarStatus(car);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	//删除
	public boolean delCar(int id) {
		try {
			parkMapper.deleteCar(id);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	//添加
	public boolean addCar(Park car) {
		try {
			parkMapper.insertCar(car);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
}
