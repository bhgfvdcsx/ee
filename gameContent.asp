

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<style> 
html,body{
overflow:hidden;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-16306534-10', 'auto');
  ga('send', 'pageview');

</script>
<title>hop!Net</title>
</head>
<body topmargin="0" leftmargin="0" style="overFlow:hidden;"onload="initStart();">

<!--table id="content_tbl" style="border: 0 none; text-align: center; margin: 0;">
<tr>
<td align="center" style="border: 0 none;">
<!--url's used in the movie-->
<!--text used in the movie behavior: url(fade.htc); vertical-align: center; -->


<div id="divPreviewFade" 
     style="filter: blendTrans(.10);
            width: 100%; height: 100%;
            position: absolute; top: 0; left: 0; z-index: 10;
            background: white; 
            border: 1 black solid" 
     offStart=500 
     duration=10>
  <!-- <h1>... Please wait ... </h1> -->
</div>
<Div id='FlashDisplay' style="position: absolute; left: 0; top: 0; z-index: 10;"></Div>
<object onreadystatechange="alert(this.readyState)"
	id="envelop" style="position: absolute; left: 0; top: 0; z-index: 0;" width="1024" height="732" 
	classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" 
	codebase="https://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" VIEWASTEXT>
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="gameLoader.swf?file=tubi" />
<param name="quality" value="high" />
<param name="bgcolor" value="#ffffff" />
<param name="wmode" value="opaque" />
<param name="menu" value="false" />
<embed src="gameLoader.swf?file=tubi" quality="high" bgcolor="#ffffff" width="1024" height="732" name="envelop" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="https://www.macromedia.com/go/getflashplayer" />
</object>
<!--/td>
</tr>
</table-->
<OBJECT 
	id="objPlayer" 
	classid=CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6 
	width="320" height="240"
	style="position: absolute; left: 0; top: 0; z-index: 5;"	VIEWASTEXT> 
	<PARAM NAME="URL" VALUE="harta-barta">
	<PARAM NAME="rate" VALUE="1">
	<PARAM NAME="balance" VALUE="0">
	<PARAM NAME="currentPosition" VALUE="0">
	<PARAM NAME="defaultFrame" VALUE="">
	<PARAM NAME="playCount" VALUE="1">
	<PARAM NAME="autoStart" VALUE="false">
	<PARAM NAME="currentMarker" VALUE="0">
	<PARAM NAME="invokeURLs" VALUE="-1">
	<PARAM NAME="baseURL" VALUE="">
	<PARAM NAME="volume" VALUE="100">
	<PARAM NAME="mute" VALUE="0">
	<PARAM NAME="uiMode" VALUE="none">
	<PARAM NAME="stretchToFit" VALUE="true">
	<PARAM NAME="windowlessVideo" VALUE="0">
	<PARAM NAME="enabled" VALUE="-1">
	<PARAM NAME="enableContextMenu" VALUE="0">
	<PARAM NAME="fullScreen" VALUE="0">
	<PARAM NAME="SAMIStyle" VALUE="">
	<PARAM NAME="SAMILang" VALUE="">
	<PARAM NAME="SAMIFilename" VALUE="">
	<PARAM NAME="captioningID" VALUE="">
	<PARAM NAME="enableErrorDialogs" VALUE="0">
	<PARAM NAME="_cx" VALUE="10160">
	<PARAM NAME="_cy" VALUE="9393">
	</OBJECT>
<script>
	var objPlayer = document.getElementById("objPlayer");
    var envelop = document.getElementById("envelop");
    var divPreviewFade = document.getElementById("divPreviewFade");
//initStart();
//document.all["content_tbl"].height = screen.availHeight;
divPreviewFade.style.height = screen.availHeight;
 var ie7 = (document.all && !window.opera && window.XMLHttpRequest) ? true : false;
//objPlayer.attachEvent('playStateChange', playStateChange);
if (ie7) {
	    objPlayer.attachEvent('playStateChange', playStateChange);

	} else {
	    objPlayer.addEventListener('playStateChange', playStateChange);
	}
var g_fIsRES = false;

   g_fIsSP2 = (window.navigator.userAgent.indexOf("SV1") != -1);
  /* if (g_fIsSP2 && window.screen.height<700)
   {
		envelop.style.top = (Math.max(screen.availHeight - parseInt(envelop.height), 0)/8).toString() + "px";
		envelop.style.left = (Math.max(screen.availWidth - parseInt(envelop.width), 0)/2+7).toString() + "px";
		envelop.height = 560;
	}else
	{ 
		envelop.style.top = (Math.max(screen.availHeight - parseInt(envelop.height), 0)/8).toString() + "px";
		envelop.style.left = (Math.max(screen.availWidth - parseInt(envelop.width), 0)/2).toString() + "px";
   }*/

var 
	//baseURL = "https://web11.mediazone.co.il/mediazone/pub/PlayListClipGet.aspx?id=", 
	//baseURL = "https://players.mediazone.co.il/media/authors/42/playlists/",
	baseURL = "https://www.cast-tv.biz/play/wvx/22773/",
	IsPlayerInitialized = false,
	IsPlayerAudio = false;

function initStart()
{
	objPlayer.style.display = "none";
	window.focus();
	//setTimeout("document.getElementById('divPreviewFade').filters.blendTrans.play()", 500);
	//setTimeout("checkFade()", 600);
	if (ie7) {
	    setTimeout("document.getElementById('divPreviewFade').filters.blendTrans.play()", 500);
	    setTimeout("checkFade()", 600);
	}
	else {
	    //divPreviewFade.style.background = "#006699";  
		divPreviewFade.style.display = "none";
	}
	
}
function checkFade()
{
	if (divPreviewFade.filters && divPreviewFade.filters.blendTrans && divPreviewFade.filters.blendTrans.status == 2)
		setTimeout("checkFade()", 100);
	else
		divPreviewFade.style.display="none";
}
function doCustomActionOnPlayingEnded()
{
	//if(!IsPlayerAudio) return;
	//alert("Custom Action Function Called ! (on end / stop)");
	var flashMovie=getFlashMovieObject("envelop");
	flashMovie.SetVariable("/myLoader/currentContent/:streamLoaded", true);
}
function doCustomActionOnPlayingStarted()
{
	//if(!IsPlayerAudio) return;
	//alert("Custom Action Function Called ! (on start)");
	var flashMovie=getFlashMovieObject("envelop");
	flashMovie.SetVariable("/myLoader/currentContent/:streamLoading", true);
}
function volumeUp()
{
		if(objPlayer.settings.volume > 80)
			objPlayer.settings.volume = objPlayer.settings.volume + 2;
		else
			objPlayer.settings.volume = objPlayer.settings.volume + 5;
}
function volumeDown()
{	
		if(objPlayer.settings.volume < 20)
			objPlayer.settings.volume = objPlayer.settings.volume - 2;
		else
			objPlayer.settings.volume = objPlayer.settings.volume - 5;
}
function setVolume(value)
{
vol = parseInt(value)
		objPlayer.settings.volume =  vol;
}
function volumeMute()
{	
	objPlayer.settings.mute = !objPlayer.settings.mute;
}
function playStateChange(NewState)
{
	status = NewState;
	switch (NewState)
	{
		case  1:
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			doCustomActionOnPlayingEnded();
			break; 
		case  2: 
			//if(!IsPlayerAudio) objPlayer.style.display = "none";
			break;
		case  3:
			if(!IsPlayerAudio) objPlayer.style.display = "";
//			alert(objPlayer.style.top);
			doCustomActionOnPlayingStarted();
			break;
		case  4: break; 
		case  5: break; 
		case  6:
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			break; 
		case  7:
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			break; 
		case  8:		
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			doCustomActionOnPlayingEnded();
			break; 
		case  9:		
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			break; 
		case 10:		
			if(!IsPlayerAudio) objPlayer.style.display = "none";
			break; 
		case 11:		
			if(!IsPlayerAudio) objPlayer.style.display = "none";
 			break;
	}
	status += " - " + objPlayer.style.display;
}
function initAudio(itX, itY)
{
	init(itX, itY, true);
}
function init(itX, itY, IsAudio)
{
	
	itX = parseInt(itX); 
	itY = parseInt(itY); 
	if(typeof(IsAudio)!='boolean')IsAudio = (IsAudio == 'true' ? true : false) ;
	IsPlayerAudio = IsAudio ? true : false ;
	if (IsAudio) {
		objPlayer.style.display = "none";
		}
	else
	{
       if (  g_fIsSP2 && window.screen.height<700)
      {
	  	objPlayer.style.top  = (parseInt(envelop.style.top)-5 + itY).toString() + "px";;
		objPlayer.style.left = (parseInt(envelop.style.left) +3+ itX).toString() + "px";;
		objPlayer.height =230;
		objPlayer.width =308;
       }else{
	//alert("init --> " +itX + "--" +itY + "  IsPlayerAudio-- " +  IsAudio);
		objPlayer.style.top  = (parseInt(envelop.style.top) + itY).toString() + "px";//-(eval(envelop.height) + envelop.offsetTop + 2) + itY;
		objPlayer.style.left = (parseInt(envelop.style.left) + itX).toString() + "px";//-(eval(envelop.width)  + envelop.offsetLeft - objPlayer.width)/2 + itX;	
	     }
     }
	IsPlayerInitialized = true;
	//alert(objPlayer.style.top);
}

function hopPlay(szURL, IsAudio)
{
	if(typeof(IsAudio)!='boolean')IsAudio = (IsAudio == 'true' ? true : false) ;
	if (!IsPlayerInitialized||((typeof(IsAudio)!='undefined')&&(IsAudio!=IsPlayerAudio)))
		init(150, 150, IsAudio);
	if ((typeof(szURL)!='undefined')&&(objPlayer.URL != (baseURL + szURL)))
		objPlayer.URL = baseURL + szURL;
		
	if (ie7) {
	   objPlayer.controls.play();
	} else {
	   	var flashMovie=getFlashMovieObject("envelop");
		flashMovie.Play();
	}
}

function hopPause()
{

	if (ie7) {
	   objPlayer.controls.pause();

	} else {
	   	var flashMovie=getFlashMovieObject("envelop");
		flashMovie.Pause();
	}
}

function hopStop()
{
	if (ie7) {
	   objPlayer.controls.stop();

	} else {
	   	var flashMovie=getFlashMovieObject("envelop");
		flashMovie.StopPlay();
	}
}
function fullScreen() 
{
	//alert(objPlayer.fullScreen);
	objPlayer.fullScreen = !objPlayer.fullScreen;
}
function putOutGame(szURL, itX, ity, _width, _height) {

   // alert("put---" + szURL);
    ifrm = document.createElement("IFRAME");
    ifrm.setAttribute("src", szURL);
    ifrm.frameBorder = "0px";
    ifrm.style.width = _width + "px";
    ifrm.style.height = _height + "px";
    /* alert(szURL)
    var isSelection = szURL;
    var isSelection =  "https://dev.hopnet.co.il/Flash/Games/kerwizz/kerwhizzloader.swf"
    var flashObjStr = "<object type=application/x-shockwave-flash width='" + _width + "' height='" + _height + "' loop=false><PARAM NAME=Movie value=" + isSelection + "></object>"*/

    document.getElementById('FlashDisplay').style.top = (parseInt(envelop.style.top) + parseInt(ity)).toString() + "px";
    document.getElementById('FlashDisplay').style.left = (parseInt(envelop.style.left) + parseInt(itX)).toString() + "px";
    // document.getElementById('FlashDisplay').innerHTML = flashObjStr;
    document.getElementById('FlashDisplay').style.display = ""
    document.getElementById('FlashDisplay').appendChild(ifrm);


}
function CloseOutGame() {

    document.getElementById('FlashDisplay').style.display = "none"
    document.getElementById('FlashDisplay').innerHTML = "";
}

</script>
<SCRIPT LANGUAGE="VBScript">
<!-- 
// Catch FS Commands in IE, and pass them to the corresponding JavaScript function.

Sub envelop_FSCommand(ByVal command, ByVal args)
    call envelop_DoFSCommand(command, args)
end sub

// -->
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript"> 
<!--  
function envelop_DoFSCommand(command, args) { 
var params =args.split(","); 
 switch (command) { 
	case "init": 
	init(params[0],params[1],params[2]); 
	break; 
	case "initAudio": 
	initAudio(params[0],params[1]); 
	break; 
	case "hopPlay": 
	//alert("java - fs  : " +params[0]); 
	hopPlay(params[0],params[1]); 
	break; 

case "hopPause":
	//alert("java - fs  : " +params[0]);
	hopPause();
	break;
	case "hopStop":
	//alert("java - fs  : " +params[0]);
	hopStop();
	break;
		case  "hopMute" :
			volumeMute();
		break;
		case  "volumeUp" :
			volumeUp();
		break;
		case  "volumeDown" :
			volumeDown();
		break;
		case  "setVolume" :
			setVolume(params[0]);
		break;
		case "fullScreen":
	fullScreen();
	break;
case "putOutGame":
    putOutGame(params[0], params[1], params[2], params[3], params[4])
    break;
case "CloseOutGame":
    CloseOutGame();
    break;
case "addIFrame":
		addIFrame(params[0], params[1],params[2], params[3], params[4]);
		break;
case "removeIFrame":        
		removeIFrame(params[0]);
		break;
}
}

function getFlashMovieObject(movieName)
{
if (window.document[movieName]) 
  {
    return window.document[movieName];
  }
  if (navigator.appName.indexOf("Microsoft Internet")==-1)
  {
    if (document.embeds && document.embeds[movieName])
      return document.embeds[movieName]; 
  }
  else // if (navigator.appName.indexOf("Microsoft Internet")!=-1)
  {
    return document.getElementById(movieName);
  }

} 

function FocusWin() {
	window.focus();
}

function LoadParentWin(sURL) {
	opener.focus();
	opener.navigate(sURL);
}

function setAsHome(){
	document.body.style.behavior='url(#default#homepage)';
	document.body.setHomePage('https://www.hopnet.co.il/default.html');
}

//-->
</SCRIPT>
</SCRIPT>
<script language="javascript" type="text/javascript" id="cast-tv">
	
	function addCastTvVideo()
	{
		addIFrame("https://www.cast-tv.biz/play/?media=yes&movId=igpji&clid=22773&skinid=161", "148px", "90px", "493px", "366px");
	}
	
	function addIFrameByUrl(iframeUrl)
	{
		addIFrame(iframeUrl, "148px", "90px", "490x", "366px");
	}
	
    //append iframe to body
    //example: addIFrame("https://www.cast-tv.biz/play/?media=yes&movId=igpji&clid=22773&skinid=161", "55px", "55px", "490x", "366px");
    //example: envelop_DoFSCommand("addIFrame", "https://www.cast-tv.biz/play/?media=yes&movId=igpji&clid=22773&skinid=161,55px,55px,490x,366px");
	//example: addCastTvVideo()
    function addIFrame(src, left, top, width, height ) {
        //alert('addIFrame');
        // remove if one already exists
        var iframe = document.getElementById("idContent");
        if (iframe) {
            removeIFrame("0");
        }
        
		//set default values for cast-tv video if position parameters were not passed
		// if (!top) top = (parseInt(envelop.style.top)+ "px";
       		//if (!left) left =   (parseInt(envelop.style.left) + 50 + "px";
       // alert(window.screen.height + "-------" + window.screen.width);
        var w_height = window.screen.height;
        var w_width = window.screen.width;

        if (!left && !top) {
            /*if (w_width == 1680 && w_height == 1050) {
                top = "255px";
                left = "580px";
            }
            if (w_width == 800 && w_height == 600) {
                top = "200px";
                left = "150px";
            }
            if (w_width == 1024 && w_height == 768) {
                top = "210px";
                left = "250px";
            }
            if (w_width == 1280 && w_height == 768) {
                top = "210px";
                left = "380px";
            }
            if (w_width == 1280 && w_height == 960) {
                top = "240px";
                left = "380px";
            }
            if (w_width == 1152 && w_height == 864) {
                top = "230px";
                left = "320px";
            }
            if (w_width == 1280 && w_height == 1024) {
                top = "240px";
                left = "370px";
            }
            if (w_width == 1280 && w_height == 800) {
                top = "210px";
                left = "380px";
            }
            if (w_width == 1680 && w_height == 900) {
                top = "210px";
                left = "390px";
            }
            if (w_width == 1440 && w_height == 900) {
                top = "220px";
                left = "450px";
            }
            if (w_width == 1366 && w_height == 768) {
                top = "210px";
                left = "380px";
            }*/
            top = "280px";
            left = "263px";
        }  

		if(!width) width = "493px";
		if(!height) height = "366px";
		
		// create new iframe
        iframe = document.createElement('iframe');
        iframe.setAttribute("id", "idContent");
        iframe.setAttribute("width", width);
        iframe.setAttribute("height", height);
        iframe.setAttribute("src", src);
        iframe.setAttribute("frameBorder", "0");
		iframe.setAttribute("border", "0");
        iframe.setAttribute("scrollbars", "no");
        iframe.setAttribute("transparent", "yes");
        iframe.setAttribute("ALLOWTRANSPARENCY", "true");
        iframe.style.cssText = "position:relative; margin-top:" + top + "; margin-left:" + left + "; border:0;";
		
		//iframe.style.cssText = "position:absolute; margin:0; padding:0; border:0; top:" + top + "; left:" + left + ";";
		//append iframe to the end of <body>
		document.body.appendChild(iframe);
		
		ResizeObjects();
		
    }

    // remove iframe that was added by addIFrame()
    function removeIFrame(_def) {
       
        var iframe = document.getElementById("idContent");
        if (iframe && iframe.parentNode) {
            iframe.parentNode.removeChild(iframe);
        }
    }
</script>
</body>
</html>