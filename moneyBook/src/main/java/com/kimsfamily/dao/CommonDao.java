package com.kimsfamily.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.cursor.Cursor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDao{

	@Autowired
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public <E> List<E> selectList(String statement) {
		return sqlSession.selectList(statement);
	}

	public <E> List<E> selectList(String statement, Object parameter) {
		return sqlSession.selectList(statement, parameter);
	}
	
	public <T> T selectOne(String statement) {
		return sqlSession.selectOne(statement);
	}

	public <T> T selectOne(String statement, Object parameter) {
		return sqlSession.selectOne(statement, parameter);
	}

	public <E> List<E> selectList(String statement, Object parameter, RowBounds rowBounds) {
		return sqlSession.selectList(statement, parameter, rowBounds);
	}

	public <K, V> Map<K, V> selectMap(String statement, String mapKey) {
		return sqlSession.selectMap(statement, mapKey);
	}

	public <K, V> Map<K, V> selectMap(String statement, Object parameter, String mapKey) {
		return sqlSession.selectMap(statement, parameter, mapKey);
	}

	public <K, V> Map<K, V> selectMap(String statement, Object parameter, String mapKey, RowBounds rowBounds) {
		return sqlSession.selectMap(statement, parameter, mapKey, rowBounds);
	}

	public <T> Cursor<T> selectCursor(String statement) {
		return sqlSession.selectCursor(statement);
	}

	public <T> Cursor<T> selectCursor(String statement, Object parameter) {
		return sqlSession.selectCursor(statement, parameter);
	}

	public <T> Cursor<T> selectCursor(String statement, Object parameter, RowBounds rowBounds) {
		return sqlSession.selectCursor(statement, parameter, rowBounds);
	}

	public int insert(String statement) {
		return sqlSession.insert(statement);
	}

	public int insert(String statement, Object parameter) {
		return sqlSession.insert(statement, parameter);
	}

	public int update(String statement) {
		return sqlSession.update(statement);
	}

	public int update(String statement, Object parameter) {
		return sqlSession.update(statement, parameter);
	}

	public int delete(String statement) {
		return sqlSession.delete(statement);
	}

	public int delete(String statement, Object parameter) {
		return sqlSession.delete(statement, parameter);
	}

	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public int batchInsert(String statement, List<?> list){
		int count = -1;
		for (int i = 0; i < list.size(); i++) {
			count = count + insert(statement, list.get(i));
		}
		return count;
	}
	
	public int batchUpdate(String statement, List<?> list){
		int count = -1;
		for (int i = 0; i < list.size(); i++) {
			count = count + update(statement, list.get(i));
		}
		return count;
	}
	
	public int batchDelete(String statement, List<?> list){
		int count = -1;
		for (int i = 0; i < list.size(); i++) {
			count = count + delete(statement, list.get(i));
		}
		return count;
	}
}
