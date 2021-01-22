#!/bin/sh
mkdir -p target/generated-sources/stuff/adhoc
mkdir -p target/generated-classes
cd target/generated-sources
echo 'package stuff.adhoc; public class Hello { public static void hello() { System.out.println("Hello world!"); } }' > stuff/adhoc/Hello.java
javac -d ../generated-classes stuff/adhoc/Hello.java
