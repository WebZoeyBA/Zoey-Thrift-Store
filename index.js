const http = require('http');
const app = express();

app.use(express.json());
app.use(express.urlencoded({
  extended: true,
}))


const hostname = '192.168.0.55';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.end('Hello, World!');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
