<p align="center">
  <a href="" rel="noopener">
 <img src="https://pbs.twimg.com/profile_images/1382071864642527232/NcsZ8ZoB_400x400.png" alt="Project logo"></a>
</p>
<h3 align="center">Interledger Helm Charts</h3>

<div align="center">

[![Hackathon](https://img.shields.io/badge/Interledger_Summit-ILP_Summit_2023_Edition-blue.svg)](https://interledger-hackathon-2023.devpost.com)
[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/golobitch/helm-charts.svg)](https://github.com/golobitch/helm-charts/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/golobitch/helm-charts.svg)](https://github.com/golobitch/helm-charts/pulls)
[![License](https://img.shields.io/badge/license-Apache_2.0-blue.svg)](LICENSE.md)

</div>

---

<p align="center"> Simplify creating of a Helm Charts through a common library
    <br> 
</p>

## 📝 Table of Contents

- [Problem Statement](#problem_statement)
- [Idea / Solution](#idea)
- [Dependencies / Limitations](#limitations)
- [Future Scope](#future_scope)
- [Setting up a local environment](#getting_started)
- [Usage](#usage)
- [Technology Stack](#tech_stack)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)

## 🧐 Problem Statement <a name = "problem_statement"></a>



## 💡 Idea / Solution <a name = "idea"></a>
The main problem with the existing helm charts is that every package is creating all of their k8s resources. IMHO this is not a good coding. Instead, the perfect way would to to have one opinionated library, that will build the whole k8s resources and the application chart would only provide just values and the k8s resources that it needs.

So the setup would be like this:

```
charts
├── common
├── rafiki-auth
├── rafiki-backend
└── rafiki-frontend
```

Common is library helm chart and others are application charts.
In ideal world, you would also have simple unittests and integration tests

## ⛓️ Dependencies / Limitations <a name = "limitations"></a>
Well, in order to run integration tests, you will need to have k8s cluster up and running. This can be done either with managed k8s (like GKE, AKE, EKS,...) or a local one with minikube/docker desktop/k3s...

In order to run unittests, you will need to have unittest plugin for helm installed (more about that later).

And since we are talking about helm charts, there is probably not worth mentioning that you will need to have helm cli installed.


## 🚀 Future Scope <a name = "future_scope"></a>
Support newer versions and resources of Kubernetes. And have possibility to create different resource version based on k8s version 

## 🏁 Getting Started <a name = "getting_started"></a>
Don't know what I should write here.
This is not the section your are looking for. Move along.

### Prerequisites

You need to have Helm CLI on your computer. You can find the installation instructions here [https://helm.sh/docs/intro/install/](https://helm.sh/docs/intro/install/)

```
Give examples
```

### Installing

A step by step series of examples that tell you how to create a new helm chart with the common library

```
helm create myChart
```

All that you need now, just add a dependency for a common helm chart and build it
```
helm dependency build
```

or if you need to update the dependency run following command:
```
helm dependency update
```

#### Unittests
In order to run unittests locally, you will need to have installed [Helm Unittests](https://github.com/helm-unittest/helm-unittest)


## 🎈 Usage <a name="usage"></a>

Add notes about how to use the system.

## ⛏️ Built With <a name = "tech_stack"></a>

- [MongoDB](https://www.mongodb.com/) - Database
- [Express](https://expressjs.com/) - Server Framework
- [VueJs](https://vuejs.org/) - Web Framework
- [NodeJs](https://nodejs.org/en/) - Server Environment

## ✍️ Authors <a name = "authors"></a>

- [@golobitch](https://github.com/golobitch) - Idea & Initial work
- []

See also the list of [contributors](https://github.com/kylelobo/The-Documentation-Compendium/contributors)
who participated in this project.

## 🎉 Acknowledgments <a name = "acknowledgments"></a>

- Hat tip to anyone whose code was used
- Inspiration
- References
