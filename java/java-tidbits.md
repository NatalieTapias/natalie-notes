# Java Tidbits 

1. Install [AdoptOpenJDK 11 LTS](https://adoptopenjdk.net/installation.html)
2. Set `JAVA_HOME` variable
	a. open `~/.bash_profile` and add the following alias: `export JAVA_HOME=$(location of jdk)
	b. source ~/.bash_profile 
	c. verify: `echo $JAVA_HOME` refers to the path of the JDK installation.  


# Use LocalCache & gradle to import Jar to another repo (for incremental development of a library, for example)
  - generate a jar
  - copy Jar to a directory, for example: `user/.gradle/localcache`
  - under gradle dependencies: add `compile fileTree(include: ['*.jar'], dir: '**path to directory**')
