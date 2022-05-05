dir /s /B *.java > sources.txt              
mkdir build
xcopy assets build /e
javac -d build -cp ".;+libs/*" @sources.txt -Xlint:unchecked 
java -cp ".;+libs/*;./build" com.badlogic.cubocy.CubocDesktop