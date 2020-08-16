<h1 align="center">Automate Project Creation</h1>

> Easy to create projects

![GitHub](https://img.shields.io/github/license/joaovds/Automate_project_creation)
![ShellScript](https://img.shields.io/static/v1?label=Shell&message=Script&color=0320fc&style=social&logo=linux)

<p align="center" style="color: black">
 <a href="#about">About</a> •
 <a href="#features">Features</a> •
 <a href="#installation">Installation</a> • 
 <a href="#howtouse">How to use</a> • 
 <a href="#contributing">Contributing</a> •
 <a href="#autor">Autor</a>
</p>

<h2 id="about">About</h2>

<p>
  This project came about when I saw the great need to be creating and configuring NodeJs and ReactJs projects all the time. The objective is that, from this script, these creations and configurations such as: Prettier, Eslint, tsconfig etc...become easier and faster to really start the job.
</p>

<h2 id="features">Features</h2>

- [x] Creation of NodeJs projects (backend)
- [x] Creating NodeJs projects with TypeScript (backend)
- [x] Creating ReactJs projects
- [x] Creating ReactJs projects with TypeScript

<h2 id="installation">Installation</h2>

Cloning the Repository

```sh
$ git clone https://github.com/joaovds/Automate_project_creation.git
$ cd Automate_project_creation
```

Give script execution permission

```sh
$ chmod 755 script.sh
```

Run the script

```sh
$ ./script.sh
```

<h2 id="howtouse">How to use</h2>

It is very simple, just answer the questions that are asked:

In the first question you must put the path to the directory where the project will be created:

```sh
$ Where do you want to create the project? (way after home): programming/study
```

Enter the project name:

```sh
What is the name of the project to be created?: nameProject
```

Confirm the project creation path

```sh
The project path will be this: "/home/userHomeName/programming/study/nameProject" [y/n]: y
```

Now choose the type of project you want to create and that's it! Your project will be created on the given path

```sh
|   What kind of project do you want to create?   |
|-------------------------------------------------|
|   1) NodeJS                                     |
|   2) NodeJS   (TypeScript)                      |
|   3) ReactJS                                    |
|   4) ReactJS  (TypeScript)                      |
|_________________________________________________|
|--> 2
```

<h2 id="contributing">Contributing</h2>

1. Fork it (<https://github.com/joaovds/Automate_project_creation.git>)
2. Create your feature branch(`git checkout -b feature/...`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/...`)
5. Create a new Pull Request

**or**

1. Go to Issues
2. Create a new issue
3. Say something you would like there and click on "Submit new Issue"

<h2 id="autor">Autor</h2>
