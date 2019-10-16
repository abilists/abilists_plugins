<#import "/spring.ftl" as spring/>
	<ul class="nav nav-tabs nav-top" role="tablist">
		<li <#if model??><#if model.menu??><#if model.menu == "home">class="active"</#if></#if></#if>><a class="menu-works-button" href="${configBean.baseURL?if_exists}/plugins">Plugins</a></li>
	</ul>