package com.abilists.plugins;

import com.abilists.plugins.service.PluginService;

public abstract class AbstractPlugin extends Thread implements PluginService {

	public abstract void run();
	public abstract void close();

}