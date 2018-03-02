$(
    function(){
	var mddApiEndpoint = "http://127.0.0.1:8086/mdd";
	setInterval(
	    function(){
		var src = mddApiEndpoint + "/screen.jpg" +
		    "?" + new Date().getTime();
		var img = document.getElementById("screenshot");
		if(img)
		    img.src = src;
		//console.log(src);
	    },
	    16
	);
	function sendMouseEvent(target, name, evt){
	    evt.preventDefault();
	    var x = evt.offsetX / target.width * 480;
	    var y = evt.offsetY / target.height * 640;
	    $.post(
		mddApiEndpoint + "/mouse",
		JSON.stringify(
		    {
			event: name,
			x: x,
			y: y
		    }
		)
	    );
	}
	"down up move".split(" ").map(
	    function(key){
		return $("#screenshot")["mouse" + key](
		    function(evt){
			return sendMouseEvent(
			    this,
			    key,
			    evt
			);
		    }
		);
	    }
	);
    }
);
