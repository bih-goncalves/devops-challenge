<h2 align="center">Application</h2>

<div align="center">

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This is a NodeJS REST API built for the project. Original code is in this [repo](https://github.com/bih-goncalves/is-odd)
    <br>
</p>

## 📝 Content

- [About](#about)
- [Getting started](#getting_started)
- [Usage](#usage)
- [Tools](#built_using)
- [Authors](#authors)
- [Acknowledgement](#acknowledgement)
---

## About <a name = "about"></a>

Simple NodeJS application with 2 routes and a health check.

## 🏁 Getting started <a name = "getting_started"></a>

If you want to build the image, you should install:

### Prerequisites

```
NodeJs 14.15.4 +
NPM/YARN
Docker
```

If you want the official image, take a look at [Dockerhub](https://hub.docker.com/r/byby267/isodd).

```
docker build -t . #for building
docker run -d -p 3000:3000 byby267/isodd:latest
```

## 🎈 Usage <a name="usage"></a>

Go to `localhost:3000/health` and check if the application is fine.

### Routes

```
/ - root path, just says that you should try a number

/:integer - Checks if the number is odd or not
- output

/health - health check for k8s
```

## ⛏️ Tools <a name = "built_using"></a>

- [Eslint](https://eslint.org/) - Linter
- [Express](https://expressjs.com/) - Server Framework
- [NodeJs](https://nodejs.org/en/) - Server Environment
- [Nodemon](https://nodemon.io/) - Changes Monitor
- [Prettier](https://prettier.io/) - Code Formatter

## ✍️ Authors <a name = "authors"></a>

- [@bih-goncalves](https://github.com/bih-goncalves)

## 🎉 Acknowledgement <a name = "acknowledgement"></a>

- This project is a challenge for DevOps role in [@HearstTelevision](https://www.hearst.com/broadcasting)
