package com.travel.dao;

import com.travel.pojo.Hotel_orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface Hotel_ordersDao extends JpaRepository<Hotel_orders,String>,JpaSpecificationExecutor<Hotel_orders>{



    @Modifying@Transactional
    @Query(value = "UPDATE hotel_orders SET `status`='1' WHERE id = ? ",nativeQuery = true)
    void updateStatus(String id);


    List<Hotel_orders> findByUserid(String userId);

}
