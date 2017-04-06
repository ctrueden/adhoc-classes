#!/bin/sh
mkdir -p target/adhoc
cd target/adhoc
echo 'package stuff.adhoc; public class Hello { public static void hello() { System.out.println("Hello world!"); } }' > Hello.java
javac Hello.java
mkdir -p ../classes/stuff/adhoc
cp Hello.class ../classes/stuff/adhoc
