#Logging 
##log4j
Industry standard, free, frequently used. 
https://www.youtube.com/watch?v=-GkRuFU_sUg
Properties, define a few things:
Different severities of log levels. Too much information, too little, or something in between?
####Appender 
Something that publishes log information. Usually we think about a text log, but it really can go to email/window etc and the appender is what does this.
####Logger 
Collects the info, default logger for entire application.

## Logging levels 
Fatal, Error, Info, Warn, Debug 
This is less frequent >>>>> this is more frequent

#log4j.properties file 
Add a dependency to your build file
JVM arguments, will I need this? mentioned in this video


RootLogger option, 
Multiple appenders are an option.

Logging messages are important to incorporate throughout the development cycle. 
