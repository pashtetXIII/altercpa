<audio id="notificationsound">
	<source src="/style/audio/notify2.ogg" type="audio/ogg" />
	<source src="/style/audio/notify2.mp3" type="audio/mpeg" />
	<source src="/style/audio/notify2.wav" type="audio/wav" />
</audio>

<script type="text/javascript">

	var previous = '{prev}';
	var orderslist = '{ourl}';
	function checkfororders() {
		$.ajax({ type: "get", url: aurl, success: function ( data ) {
        	if ( data.ords > 0 ) {
        		notif({ msg: "{text}" + data.ords, type: "info" });
        	}
		}, dataType: "json" });
		setTimeout( 'checkfororders()', 30000 );
	}

	setTimeout( 'checkfororders()', 30000 );

</script>