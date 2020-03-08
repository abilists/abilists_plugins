package com.abilists.plugins.service;

import java.util.HashMap;

public interface PluginService {

	public static String TABLE_NAME = "mpName";
	public static String DB_URL = "dbUrl";
	public static String DB_USERNAME = "dbUsername";
	public static String DB_PASSWORD = "dbPassword";

	public String createTables(HashMap<String, String> mapHash) throws Exception;
	public String dropTables(String tableName) throws Exception;
}
