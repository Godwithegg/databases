package com.danhuang.redis.test;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class TestPool {
	public static void main(String[] args) {
		JedisPool jedisPool = JedisPoolUtil.getJedisPoolInstance();

		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			jedis.set("a", "dan");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JedisPoolUtil.release(jedisPool, jedis);
		}
	}
}
