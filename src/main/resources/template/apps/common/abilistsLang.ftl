			<li class="dropdown">
     		<#if lang?? && lang == "ko">
     			<a href="?lang=ko" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> 한국어<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="?lang=en">영어</a></li>
					<li><a href="?lang=ja">일본어</a></li>
				</ul>
     		<#elseif lang?? && lang == "ja">
				<a href="?lang=ja" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> 日本語<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="?lang=ko">韓国語</a></li>
					<li><a href="?lang=en">英語</a></li>
				</ul>
     		<#else>
				<a href="?lang=en" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> English<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="?lang=ko">Korea</a></li>
					<li><a href="?lang=ja">Japan</a></li>
				</ul>
     		</#if>
			</li>