const http = require("http");
const fs = require("fs").promises;

const host = "localhost";
const port = 8000;

http
	.createServer((requier, response) => {
		fs.readFile(__dirname + "/index.html")
			.then((contents) => {
				response.setHeader("Content-Type", "text/html");
				response.writeHead(200);
				response.end(contents);
			})
			.catch((err) => {
				response.writeHead(500);
				response.end(err);
				return;
			});
	})
	.listen(port, host, () => {
		console.log(`Server is running on http://${host}:${port}`);
	});
