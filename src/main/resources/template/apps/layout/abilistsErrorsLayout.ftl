<#macro myLayout title="Abilists.com">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<#include "/apps/common/header.ftl"/>
	<#include "/apps/common/headerCss.ftl"/>
	<body>
		<#include "abilistsNavi.ftl"/>
	    <div class="container">
			<#include "abilistsErrorsMenu.ftl"/>
			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12 col-md-12">

					<#nested/>

					</div><!-- /col-lg-12 col-md-12 -->
				</div><!-- /.row -->
			</div><!-- /.page-wrapper -->
			<#include "/apps/common/footer.ftl">
	    </div><!-- /container -->
	</body>
</html>
</#macro>