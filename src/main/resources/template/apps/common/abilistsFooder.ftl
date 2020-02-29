
	<script type="text/javascript">
	window.onload = function() {
		$('#loading').hide();
	}
	/* Show the complete message to save.*/
	var ecompany = document.getElementById("completeId");
	<#if save??>
		ecompany.style.display = "";
		<#if "completed" == "${save?if_exists}">
		function fadeOutCompleted() {
			fadeOut(ecompany);
		}
		addLoadEvent(fadeOutCompleted);
		</#if>
	</#if>
<#-- This is the option which push notification -->
<#if optionsList??><#if optionsList[4].uoValue == "1">
	var liMain;
	var dadgeId = document.getElementById("dadgeId");
	var notiListId = document.getElementById("notiListId");
	function pushNotiAjax() {
		var cdata = '{}';
		var curl = "${configBean.contextPath?if_exists}/noti/sltPushNotiAjax";
		var cresult = requestbyAjax(curl,cdata);

		if(cresult) {
			var notiSize = cresult.length;
			if (notiSize > 0) {
				dadgeId.innerHTML = notiSize; 
				dadgeId.style.backgroundColor="#ff0000";
			}

			// Remove the child li tags
			notiListId.innerHTML = "";
			// Append the new notification data list
			for (i = 0; i < notiSize; i++) {
				makeNoti(cresult[i]);
			}
			// Append the lasted link to see the all notification.
			var liShowBox = document.createElement("LI");
			var aAHtml = '<a class="text-center" href="${configBean.contextPath?if_exists}/noti/sltNotiForUserList"><strong><@spring.message "noti.menu.noti.showbox"/></strong></a>';
			liShowBox.innerHTML = aAHtml;
			notiListId.appendChild(liShowBox);
		}
	}

	setInterval(function () {
    	pushNotiAjax();
    }, 60000);

    function makeNoti(cresult) {
    	liMain = document.createElement("LI");
    	var aEle = document.createElement("A");
    	aEle.setAttribute("href", "${configBean.contextPath?if_exists}/noti/sltNotiForUser/" + cresult.notiNo);
    	
    	var divAHtml = '<div>' + cresult.notiTitle + '<span class="pull-right text-muted small">' + cresult.updateTime + '</span></div>';
    	aEle.innerHTML = divAHtml;
    	liMain.appendChild(aEle);
		notiListId.appendChild(liMain);
		
    	var liLine = document.createElement("LI");
    	liLine.className = "divider";
		notiListId.appendChild(liLine);
    }
</#if></#if>

<#-- This is the option which push notification for new posts -->
<#if optionsList??><#if optionsList[5].uoValue == "1">
	function getNewPostsCntAjax(maxUpsNo) {
		var cdata = '{"upsNo":"' + maxUpsNo + '"}';
		var curl = "${configBean.contextPath?if_exists}/abilists/sltNewPostsCntAjax";
		var cresult = requestbyAjax(curl,cdata);

		if(cresult) {
			notify(cresult);
		}
	}

	$notifications = $('.notifications')

	function notify(text) {
		var $notification = $('<li />').css({left: 320, 'background': '#777777'});
		$notiA = $('<a />', {href: '${configBean.contextPath?if_exists}/abilists'}).text('<@spring.message "posts.link.new.title"/>').css({'color': '#ffffff'});
		$badgeSpan = $('<span />', {class: 'badge'}).text(text).css({'background-color': '#ff0000'});
		$notiA.append($badgeSpan);
		$notification.append($notiA);
	    $notifications.append($notification);

	    $notification.animate({
	      left: 0
	    }, 300, function() {
	      $(this).delay(60000).animate({
	        left: 320
	      }, 200, function() {
	        $(this).slideUp(200, function() {
	          $(this).remove()
	        })
	      })
	    })
	}

	setInterval(function () {
		// Get the last upsNo from the input in hidden
		var maxUpsNoId = document.getElementById('lastMaxUpsId');
		getNewPostsCntAjax(maxUpsNoId.value);
	}, 60000);
</#if></#if>

	</script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91068545-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-91068545-1');
	</script>
