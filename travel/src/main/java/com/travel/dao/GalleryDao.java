package com.travel.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.travel.pojo.Gallery;
/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface GalleryDao extends JpaRepository<Gallery,String>,JpaSpecificationExecutor<Gallery>{
	
}
