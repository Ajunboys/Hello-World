//document.domain ="qq.com";
function hide(){
//	parent.document.getElementById('af').style.display = 'none';
	//parent.document.removeChild("iframe");
	parent.chg();
	parent.document.getElementById('af').parentNode.removeChild(parent.document.getElementById('af'));
};

function vv(){
	alert("v_v ^_^ V_V Y_Y $_$ (^_^)");
};
function msg(){
	var msgbox = document.getElementById("msg");
	if(!msgbox){
		msgbox = document.createElement("span");
		msgbox.id = "msg";
		document.body.appendChild(msgbox);
	}
	msgbox.innerHTML = "hello world.....";
	window.setTimeout("hide()", 2000);
};