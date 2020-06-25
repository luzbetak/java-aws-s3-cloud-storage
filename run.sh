#!/bin/bash
#--------------------------------------------------------------------------------------------------------------------#
  if [ "$1" == "0" ] 2>/dev/null; then
    #mvn clean install
    mvn clean compile assembly:single

elif [ "$1" == "1" ] 2>/dev/null; then
    # mvn exec:java -Dexec.mainClass=luzbetak.App
    java -cp target/aws-s3-java-1.0.0-jar-with-dependencies.jar luzbetak.App

#--------------------------------------------------------------------------------------------------------------------#
else

  echo "--------------------------------"
  echo "./run.sh 0 -- mvn clean install "
  echo "./run.sh 1 -- App               "
  echo "--------------------------------"

fi
#--------------------------------------------------------------------------------------------------------------------#
