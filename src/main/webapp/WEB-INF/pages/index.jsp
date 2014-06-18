<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<!-- 	<link href="/resources/css/magnific-popup.css" rel="stylesheet"> -->
<link href="<c:url value="/resources/css/magnific-popup.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/video-js.css" />"
	rel="stylesheet">

</head>

<body>
	<a class="popup-youtube"
		href="http://www.youtube.com/watch?v=0O2aH4XLbto">Open YouTube
		video</a>
	<br>
	<a class="popup-vimeo" href="https://vimeo.com/45830194">Open Vimeo
		video</a>
	<br>
	<a class="popup-gmaps"
		href="https://maps.google.com/maps?q=221B+Baker+Street,+London,+United+Kingdom&amp;hl=en&amp;t=v&amp;hnear=221B+Baker+St,+London+NW1+6XE,+United+Kingdom">Open
		Google Map</a>
		
	<br>
	<a href="#popup-with-something" class="open-popup-link">Show popup</a>

	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/video.js" />"></script>
	
	<script>
		$(document).ready(function() {
			$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
				disableOn : 700,
				type : 'iframe',
				mainClass : 'mfp-fade',
				removalDelay : 160,
				preloader : false,

				fixedContentPos : false
			});
			$('.open-popup-link').magnificPopup({
				  type:'inline',
				  midClick: true,
				  mainClass: 'mfp-fade'
			});
			
			videojs('example_video_1').controlBar.progressControl.hide();
		});
		
		
		
	</script>
	<div id="popup-with-something" class="mfp-hide">
		<div class="some-element">
	<video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="640" height="264"
      poster="http://video-js.zencoder.com/oceans-clip.png">
    <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4' />
    <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm' />
    <source src="http://video-js.zencoder.com/oceans-clip.ogv" type='video/ogg' />
    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
    <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
  </video>
	</div>
	</div>
	<h2>Hello World!</h2>
	<h4>Message : ${message}</h4>
</body>

</html>
