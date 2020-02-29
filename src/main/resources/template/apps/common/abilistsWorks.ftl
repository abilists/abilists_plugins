		<div class="item-box">
			<a href="${configBean.contextPath?if_exists}/account">
				<img style="border-radius: 4px;" src="${model.users.userImgAvatar?if_exists}" id="showImg" width="125" alt="your picture" />
		    </a>
			<div style="padding-top: 10px;">
		    	<span class="glyphicon glyphicon-user"></span>
		    	<#if model.users??><a href="${configBean.contextPath?if_exists}/profile/${user.userId?if_exists}">${model.users.userName?if_exists}</a></#if>
		    </div>
			<div style="padding-top: 5px;">
		    	@ <#if model.users??><a href="${configBean.contextPath?if_exists}/profile/${user.userId?if_exists}">${model.users.userId?if_exists}</a></#if>
		    </div>
		</div>
