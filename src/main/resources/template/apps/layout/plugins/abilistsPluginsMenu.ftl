<#import "/spring.ftl" as spring/>
	<ul class="nav nav-tabs nav-top" role="tablist">
		<li <#if model??><#if model.menu??><#if model.menu == "home">class="active"</#if></#if></#if>><a class="menu-works-button" href="/works/<#if model.users??>${model.users.userId?if_exists}</#if>">Plugins</a></li>
		<li <#if model??><#if model.menu??><#if model.menu == "sltProjectsList">class="active"</#if></#if></#if>><a class="menu-works-button" href="/works/<#if model.users??>${model.users.userId?if_exists}/sltProjectsList</#if>">Servey</a></li>
		<li <#if model??><#if model.menu??><#if model.menu == "sltProjectsList">class="active"</#if></#if></#if>><a class="menu-works-button" href="/works/<#if model.users??>${model.users.userId?if_exists}/sltProjectsList</#if>">Memo</a></li>
	</ul>