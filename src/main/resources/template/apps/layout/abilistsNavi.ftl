<#import "/spring.ftl" as spring/>
	<!-- Static navbar -->
    <nav id="myNavbar" class="navbar navbar-default navbar-static-top" style="position: fixed; width: 100%;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/abilists"><img src="/static/apps/img/bi02.png" class="img-responsive" width="70" alt="abilists" /></a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <#if user??>
    			<li <#if model??><#if model.navi??><#if model.navi == "list">class="active"</#if></#if></#if>><a href="/list">ddd</a></li>
            	<li <#if model??><#if model.navi??><#if model.navi == "profile">class="active"</#if></#if></#if>><a href="/profile">bbbb</a></li>
            	<li <#if model??><#if model.navi??><#if model.navi == "works">class="active"</#if></#if></#if>><a href="/works">aaaa</a></li>
                <li class="dropdown<#if model??><#if model.navi??><#if model.navi == 'plugins'> active</#if></#if></#if>">
	              <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #586b92; font-weight: bold;" role="button" aria-haspopup="true" aria-expanded="false"> Plugins <span class="glyphicon glyphicon-plus"></span> <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	                <li <#if model??><#if model.navi??><#if model.navi == "plugins">class="active"</#if></#if></#if>><a href="/plugins"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Plugins</a></li>

	                <#if model??>
	                <#if model.mPluginsList?has_content>
	              		<#list model.mPluginsList as mPlugins>
	              		<li <#if model??><#if model.navi??><#if model.navi == mPlugins.mpName>class="active"</#if></#if></#if> style="margin-left: 17px;"><a href="/plugins/${mPlugins.mpName?if_exists}/index">
	              			${mPlugins.mpName?if_exists}</a>
	              		</li>
	              		</#list>
	              	</#if>
	              	</#if>
	              	<li role="separator" class="divider"></li>
	                <li <#if model??><#if model.navi??><#if model.navi == "host">class="active"</#if></#if></#if>><a href="/host"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> Client</a></li>
	                <li><a href="http://www.abilists.com/home/help/helpDevelop" target="_blank"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Guide Development </a></li>
	              </ul>
	            </li>
	        <#else>
	            <li <#if model??><#if model.navi??><#if model.navi == "abilists">class="active"</#if></#if></#if>><a href="/abilists/"> abilists </a></li>
	            <li <#if model??><#if model.navi??><#if model.navi == "blog">class="active"</#if></#if></#if>><a href="http://abilist.blogspot.jp" target="_blank"> Blog </a></li>
            </#if>
          </ul>

      	  <ul class="nav navbar-nav navbar-right">

<#include "/apps/common/abilistsLang.ftl"/>

      	  </ul>
        </div><!--/.nav-collapse -->
      </div><!--/container -->
    </nav><!--/navbar -->