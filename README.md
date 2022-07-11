
# Learning Libgdx Game Development
## java into javascript souce code with Source Map debuggin idea
- 將 java transpile into 相對應對 javascript source code. 而且還是直接使用相對應的，寫好的javascript java library.
如，寫一個相對應 java.util.Arrays 的 javascript source code 程式碼，這樣 source map 的 java 及相對應的程式碼會很相似. 這樣做的好處是，不懂 javascript 的人，也可以用自已熟的語言開發及除錯，這樣也讓不喜歡javascsript的人，可以產生學習興趣。
- 要做到這點需要了解如何寫compiler，如何製作自己的java JVM,如何compile java JVM into class 及讀取等等. 或許也可用cloud 平行讀取。

## Source Code for learning.
- https://github.com/Apress/java-game-dev-LibGDX
- https://github.com/libgdx/libgdx-demo-cuboc
- https://github.com/libgdx/libgdx-demo-metagun
- (Other offical libgdx demo) https://github.com/libgdx?q=demo&type=all&language=&sort=
- Other open-source mini-games: https://github.com/topics/ludum-dare?l=java

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
