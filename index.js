const http = require("http");
const fs = require('fs');


http.createServer((req, res) => {
    var clientip = req.headers['x-forwarded-for'] ||
        req.socket.remoteAddress ||
        null;
    console.log(`Request to ${req.url} from ${clientip}`);

    //Homepage/Resume
    if (req.url === "/") {
        fs.readFile('index.html', function(err, data) {
            res.writeHead(200, {'Content-Type': 'text/html'});
            res.write(data);
            res.end()
        });
        
    }
    else if (req.url === "/nada") {
        fs.readFile('nada.html', function(err, data) {
            res.writeHead(200, {'Content-Type': 'text/html'});
            res.write(data);
            res.end()
        });
        
    }
    else {
        res.writeHead(404, {'Content-Type': 'text/plain'});
        res.end("404 error! File not found.");
    }
})
.listen(8084, "0.0.0.0");