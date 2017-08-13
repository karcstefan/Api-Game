<!DOCTYPE HTML>
<html>
<head>

</head>
<body>
	<canvas id="main"></canvas>
	<script src="https://cdn.socket.io/socket.io-1.2.0.js"></script>
	<script type="text/javascript" src="lib/client/game.js"></script>
	<script>
		window.onload = function () {
			console.log(3);
			this.socket = io();

			socket.on('test', function (data) {
				console.log(data);
			});
		};
	</script>

</body>
</html>    