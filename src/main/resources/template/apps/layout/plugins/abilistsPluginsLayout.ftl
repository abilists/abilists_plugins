<#macro myLayout title="Abilists.com">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<#include "abilistsPluginsHeader.ftl"/>
	<body>
		<#include "/apps/common/abilistsLoading.ftl"/>
		<#include "/apps/layout/abilistsNavi.ftl"/>
		<div class="bg-image">
		    <div class="container">
		    	<#include "abilistsPluginsMenu.ftl"/>
				<#nested/>
				<#include "/apps/common/footer.ftl">
		    </div><!-- /container -->
		</div>
		<#include "/apps/common/abilistsFooder.ftl"/>
	</body>
</html>
</#macro>