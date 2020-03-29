<#import "/spring.ftl" as spring/>
<link rel="stylesheet" href="${configBean.contextPath?if_exists}/static/apps/css/abilists/ad.css?2017102207">
<style>
	.plugins-box {
		list-style: none; 
		width: 220px;
    	margin: 5px;
		float: left;
		border-radius: 3px;
    	border: 1px solid #eee;
		padding: 10px;
	}
</style>

<div class="item-box">
	<nav class="breadcrumbs">
	<ul>
		<li><a class="menu-works-button" href="${configBean.contextPath?if_exists}/plugins"> <@spring.message "plugins.navi.title"/></a></li>
		<li class="active"><a href="#"><@spring.message "plugins.main.title"/></a></li>
	</ul>
	</nav>
</div>

<div id="divBodyId" class="row">
	<div class="col-md-2 right-col-cus sideImg">
		<div class="item-box" style="border: 0.5px solid #dadada;">
			<a href="${configBean.contextPath?if_exists}/account">
				<img style="border-radius: 4px;" src="${myImgAvatar?if_exists}" id="showImg" width="125" alt="your picture" />
			</a>
	    </div>
	</div>
	<div class="col-sm-10 left-col-cus">
		<div class="item-box">
			<a href="http://www.abilists.com/" target="_blank">
				<img class="ad-img01" src="${configBean.contextPath?if_exists}/static/apps/img/abilists/adBanner01.png?2019010101" width="100%" alt="www.abilists.com">
			    <div class="ad-title01" style="color: #4363a2;">
					<h2>Platform for Experts</h2>
					<p style="color: #5a5a5a;">Abilists is a talent management system that grasps the current technology and growth trends from an objective point of view.</p>
				</div>
			</a>
		</div>
	</div>
</div>
