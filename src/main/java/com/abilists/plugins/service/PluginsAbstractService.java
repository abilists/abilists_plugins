package com.abilists.plugins.service;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import base.core.common.Common;
import base.core.service.AbstractService;

public abstract class PluginsAbstractService extends AbstractService {

	final Logger logger = LoggerFactory.getLogger(PluginsAbstractService.class);
	protected static String DEFAULT_IMG_NAME = "default.png";
	protected static String APPLICATION_PROPERTIES = "application.properties";
	public final static String APPLICATION_PROPERTIES_FULLPATH = new StringBuilder().append(USER_HOME).append("/").append(Common.USER_ABILISTS).append("/").append(APPLICATION_PROPERTIES).toString();

	@Autowired
	@Qualifier("sqlSessionSlaveFactory")
	public SqlSessionFactoryBean sqlSessionSlaveFactory;
	@Autowired
	public SqlSession mAbilistsDao;

}