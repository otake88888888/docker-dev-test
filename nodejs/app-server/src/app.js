const http = require("http");
const port = 10081;

const server = http.createServer((request, response) => {
  response.writeHead(200, {
    "Content-Type": "text/html",
  });

  const responseMessage = "<h1>Hello World</h1>";
  response.end(responseMessage);
  console.log(`Sent a response : ${responseMessage}`);
});

server.listen(port, "0.0.0.0");
console.log(`The server has started and is listening on port number: ${port}`);
