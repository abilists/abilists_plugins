
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

	var dadgeId = document.getElementById("dadgeId");
	function pushNotiAjax() {
		var cdata = '{}';
		var curl = "${configBean.contextPath?if_exists}/noti/sltPushNotiAjax";
		var cresult = requestbyAjax(curl,cdata);

		if(cresult) {
			dadgeId.innerHTML = cresult.length;
			dadgeId.style.backgroundColor="#ff0000";

			for (i = 0; i < cresult.length; i++) {
				console.log(cresult[i].notiNo);
			}

		}
	}
	</script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-91068545-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-91068545-1');
	</script>
