package org.seckill.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

public interface SeckillDao {

	int reduceNumber(@Param("seckillId")long seckillId,@Param("killTime")Date killTime);
	
	Seckill queryById(long seckillId);
	
	List<Seckill> queryAll(int offset,int limit);
}
