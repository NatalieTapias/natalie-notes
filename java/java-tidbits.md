#Java Tidbits 
These are the HOT JAVA tips I've picked up on the job. 
1. Install [AdoptOpenJDK 11 LTS]{https://adoptopenjdk.net/installation.html} binaries. 
2. Set `JAVA_HOME` variable
	a. open `~/.bash_profile` and add the following alias: `export JAVA_HOME=$(location of jdk)
	b. source ~/.bash_profile 
	c. verify: `echo $JAVA_HOME` refers to the path of the JDK installation.  
3. 

# Use LocalCache & gradle to import Jar to another repo
  <li>copy Jar to a directory in your user/.gradle/localcache; example: 
  cp ~/documents/event-merger/build/libs/event-merger-0.2.3.jar ../../fb6z/.gradle/localcache/
  </li>
  <li>
  from the project root dir
  cp -r build/libs/*.jar ~/.gradle/localcache/
  //comment this implementation
  //implementation "com.nordstrom.nap.onehop:event-merger:$eventMergerLibVersion"
  and add the below line 
  compile fileTree(include: ['*.jar'], dir: '/Users/YOUR_LAN_ID/.gradle/localcache')
  </li>
</ol>


