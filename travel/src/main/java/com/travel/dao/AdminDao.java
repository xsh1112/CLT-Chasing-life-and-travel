package com.travel.dao;

import com.travel.pojo.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface AdminDao extends JpaRepository<Admin,String>,JpaSpecificationExecutor<Admin>{

    /**
     * 查名字
     * @param name
     * @return
     */
    public Admin findByName(String name);
}
