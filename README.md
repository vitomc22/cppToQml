# Cpp To QML
## _A simple form to integrate c++ and qml_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Basically we must register the c++ class as a QML module, the magic happens using the template function "qmlRegisterType".
We have a c++ class called "Randcalc" and we pass it as a type to this function:
### qmlRegisterType<Randcalc>("com.company.randcalc",1,0,"Randcalc");

This is it, ✨Magic ✨!! 

****
