# SampleCukeRestTest

This is a sample project to demonstrate the use of [CukeRestSalad](https://github.com/bharathcp/CukeRestSalad). It needs the CukeRestSalad to be cloned in the same level as this project.

To run this sample project, Please run the below commands:
```shell
cd gitClonePath/SampleCukeRestTest
sh gradlew clean build
unzip build/distributions/SampleCukeRestTest-1.0.zip -d build/distributions/
sh build/distributions/SampleCukeRestTest-1.0/bin/SampleCukeRestTest com.bdd.restsalad.steps.Runner
```
