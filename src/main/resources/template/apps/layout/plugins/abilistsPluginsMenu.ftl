<#import "/spring.ftl" as spring/>
	<ul class="nav nav-tabs nav-top" role="tablist">
		 <li <#if model??><#if model.menu??><#if model.menu == "index">class="active"</#if></#if></#if>><a class="menu-works-button" href="${configBean.contextPath?if_exists}/plugins"><@spring.message "plugins.navi.title"/></a></li>
	<#if mPluginsList??>
	<#if mPluginsList?has_content>
	  <#list mPluginsList as mPlugins>
		  <li <#if model??><#if model.menu??><#if model.menu == "${mPlugins.mpName?if_exists}">class="active"</#if></#if></#if>><a class="menu-works-button" href="${configBean.contextPath?if_exists}/plugins/${mPlugins.mpName?if_exists}">${mPlugins.mpName?if_exists}</a></li>  
	  </#list>
	</#if>
	</#if>
	</ul>
