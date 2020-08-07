#Log4J
Looking into features of 2.11.1
## Generally what is Log4J?
Apache Log4j is  a well known framework for logging application behavior. [link to docs here](http://logging.apache.org/log4j/2.x/manual/index.html) 
This library allows logging requests to print to multiple logging destinations, called Appenders. Appenders exist for the console, files, remote socket servers, UNIX Syslog daemons, etc. 
Layout: it is possible to associate a Layout with an Appender, which is responsible for formatting the LogEvent according to whatever the user specifies. 

Different severity of log levels: how much information do you want to include . https://www.youtube.com/watch?v=-GkRuFU_sUg

Appender: is something that publishes log information. Could go to an email, server, error window etc
Multiple appenders can be subscribed to the same log 
RootLogger is default for entire application 

Logging Levels:
Going from High priority -> Low priority
Fatal -> Error -> Info -> Warn -> Debug

log4j properties file - using xml is the preferred method 
log4j.properties
if you dont' like having it in the root -Dlog4j.configuration=<path to log4j.properties file>

The Root logger option 
designate publishing level or higher 
after logging level is the appender that is subscribed to this loger 
how do we know what the file appender is 

File=<filepath>
max file size, max backup index, layout, conversion pattern
these above are all attributes that can be ascribed to any particular appender 

final static Logger logger = Logger.getLogger(NameOfCurrentClass); 
when we log, we are going to log to this logger here
logger is the thing assembling log messages form our code 
in the method, we might say 
logger.info("entering the execute message"); 
this is info level, just information 

the line immediately after some method, you know that an operation was successful 
logger.info("save successful" + plant.toString());

Putting logs in exceptions (although take a look at Nordstrom standards re: this)
logger.error("Error while saving plant. Message: " + e.getMessage());
** remeber, don't log and throw, just go further up the stack and log there (wherever the exception is finally caught)
