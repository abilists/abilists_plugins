package com.abilists.plugins.core;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.Map;

public class DynamicJarLoader {

    private String jarPath;

    private Map<String, URLClassLoader> loaderMap = new HashMap<String, URLClassLoader>();

    public DynamicJarLoader(String jarPath){
        this.jarPath = jarPath;
        this.jarPath.replaceAll("\\\\", "/");
        if(this.jarPath.endsWith("/") == false) this.jarPath = this.jarPath + "/";
    }

    public boolean load(String jarFileName){
        if(loaderMap.containsKey(jarFileName) == true) unload(jarFileName);
        String jarFilePath = jarPath + jarFileName;
        File jarFile = new File(jarFilePath);

        try {
            URL classURL = new URL("jar:" + jarFile.toURI().toURL() + "!/");
            URLClassLoader classLoader = new URLClassLoader(new URL[] {classURL});
            loaderMap.put(jarFileName, classLoader);
        } catch (MalformedURLException e) {
            return false;
        }

        return true;
    }

    public boolean unload(String jarFileName){
        URLClassLoader loader = loaderMap.get(jarFileName);
        if(loader == null) return true;
        try {
            loader.close();
        } catch (IOException e) {
            return false;
        }
        finally{
            loaderMap.remove(jarFileName);
        }
        return true;
    }

    public Object newInstance(String jarFileName, String className){

    	URLClassLoader loader = loaderMap.get(jarFileName);
        if(loader == null) return true;
        
        try {
            Class<?> clazz = loader.loadClass(className);
            return clazz.newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
            return null;
        }

    }

    public Object newInstance(String className){
        for(String each : loaderMap.keySet()){
            Object object = newInstance(each, className);
            if(object != null) return object;
        }
        return null;
    }

}
