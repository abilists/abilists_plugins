package com.abilists.plugins.core;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 * https://www.youtube.com/watch?v=bC-j7J2XJ_k
 */

public class PluginsClassLoader extends ClassLoader {

	final Logger logger = LoggerFactory.getLogger(PluginsClassLoader.class);

	public PluginsClassLoader() {
		super(Thread.currentThread().getContextClassLoader());
	}

	// key -> service
	// className -> com.abilists.plugins.Service
	public static class PluginData {
		public final String className;
		public final URL[] jarUrls;
		public final Class<?> cacheClass;

		public PluginData (String className, URL[] jarUrls, ClassLoader cl) throws ClassNotFoundException {
			this.className = className;
			this.jarUrls = jarUrls;
			this.cacheClass = Class.forName(className, true, new URLClassLoader(jarUrls, cl));
		}
	}

	final private static Map<String, PluginData> dataMap = new HashMap<>();

	public static AbstractPlugin newInstance(PluginData data) throws InstantiationException, IllegalAccessException {
		return (AbstractPlugin) data.cacheClass.newInstance();
	}

	public static Map<String, PluginData> getPlugins() {
		return PluginsClassLoader.dataMap;
	}
	
	public static void addPlugin(String key,  String className, String fileJar, ClassLoader cl) throws Exception {

		File file = new File(fileJar);
		URL fileURL = file.toURI().toURL();
		// String jarURL = "jar:" + fileURL + "!/";
		URL[] jarUrls = new URL[]{fileURL};

		dataMap.put(key, new PluginData(className, jarUrls, cl));
	}

}
