#!/bin/sh
sh gradlew clean build
unzip ./build/distributions/SampleCukeDBSalad-1.0.zip -d ./build/distributions
sh ./build/distributions/SampleCukeDBSalad-1.0/bin/SampleCukeDBSalad org.cukesalad.db.runner.Runner