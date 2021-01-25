import express from 'express';
import http from 'http';
import cors from 'cors';

require('dotenv').config();

const app = express();
app.use(cors());
const server = new http.Server(app);

import numberController from './controllers/numberController';

app.get('/', (request, response) => {
    response.statusCode = 200;
    response.send({
        message: 'You should try it with a number'
    });
});

app.get('/health', (request, response) => {
    response.statusCode = 200;
    response.send({
        message: 'I am fine'
    });
});

app.get('/:number',numberController);

server.listen(process.env.PORT);