package com.abilists.plugins.dao;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MInitiativeDao {

	public int initiativeTables(Map<String, Object> map) throws SQLException;

}