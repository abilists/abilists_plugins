package com.abilists.plugins.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

public interface PluginsController {

	public String index(HttpServletRequest request, ModelMap model) throws Exception;

}