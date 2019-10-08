package com.abilists.plugins.service;

public interface PluginService {
	public String createTables(String tableName) throws Exception;
	public String dropTables(String tableName) throws Exception;
}
