
# Learning Libgdx Game Development

## Source Code for learning.
https://github.com/Apress/java-game-dev-LibGDX

## Compile your java source code into bytecode (*.class files)

```
javac -cp ".;+libs/*" *.java
```
## Run your java bytecode app via Virtual Machine

```
java -cp ".;+libs/*" Launcher
```
Launcher is Launcher.class file that contains main() method in its original java source code.

## Compile your java source code into a JAR
```
mkdir build
javac -cp ".;+libs/*" -d ./build *.java
cd build
jar cvf myapp.jar *
```
this command will generate a myApp.jar

## How to compile a java program into executable (*.exe) for Windows/Mac/Linux?

To Do: figure out how to compile a libgdx game into an executable for selling.
https://github.com/libgdx/packr

## How to compile a libgdx game into android build ?
To Do: please research!!

## How to compile Cuboc Desktop game app?
```
dir /s /B *.java > sources.txt              
mkdir build
xcopy assets build /e
javac -d build -cp ".;+libs/*" @sources.txt -Xlint:unchecked 
java -cp ".;+libs/*;./build" com.badlogic.cubocy.CubocDesktop
```
# Continious Integartion - Move the code to gitlab. git has free 400 CI minutes with 5GB repo.
https://about.gitlab.com/pricing/
