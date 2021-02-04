Pattern Classifications 
Per gang of four, there are three pattern groups: Creational, Structural, Behavioral.
# Creational Patterns
* Describes how objects are created. 
## Singleton
### Introduction
- Guarantees only one instance is created.
- Guarantees control of the resource.
- Usually lazily loaded. 
- Examples in Java API: Runtime environment, Logger, Spring Beans, Graphic Managers.

Description of the design pattern:
Creates itself and responsible for lifecycle, static in nature but not typically a Static class, needs to be threadsafe static doesn't guarantee it. Private Instance, Private Constructor. Want singleton to call constructor and nobody else. If you require parameters, typically use a Factory Pattern.

### Eagerly Loaded Singleton
* creates instance each time
* customary to have getInstance() which returns the singleton instance 
```
public class DbSingleton {
  private static DbSinglton instance = new DbSingleton();

  private DbSingleton() {}

  public static DbSingleton getInstance() {
    return instance;
  }
}
```
### Lazily Loaded Singleton 
* this isn't threadsafe, but can be a substantial performance improvement, only spools up new instance when needed.
```
public class DbSingleton {
  private static DbSinglton instance = null;

  private DbSingleton() {}

  public static DbSingleton getInstance() {
    if(instance == null) {
      instance = new DbSingleton();
    }
    return instance;
  }
}
```

### Lazily Loaded Singleton + Threadsafe 
* using volatile keyword makes it threadsafe
* make sure no reflection class creates an instance of this 
* synchronized on the class
```
public class DbSingleton {
  private static volatile DbSinglton instance = null;

  private DbSingleton() {
    if(instance != null) {
      throw new RuntimeException("Use getInstance() method to create");
    }
  }

  public static DbSingleton getInstance() {
    if(instance == null) {
      synchronized(DbSingleton.class) {
        if(instance == null) {
          instance = new DbSingleton();
        }
      }
      
    }
    return instance;
  }
}
```
### Pitfalls
* often overused when not needed 
* difficult to unit test 
* not threadsafe often if not careful
* usually when getInstance() needs an argument go to the Factory Pattern

### Contrast Singleton & Factory
| Singleton | Factory|
| ----| ----| 
| Singleton Returns same instance every time | Returns Various Instances |
One constructor method (constructor is private) nor arguments | Mulitple Constructors
No interface typically | Interface Driven  & Adapts to Environment more easily|

### Summary
* Use when you want to guarantee one instance 
* Easy to implement 
* Solves well defined problem, but can be abused 


--------

## Builder
* consider complex constructors, force immutability on an object (which you can't do with a bunch of setters), examples: `StringBuilder`, `DocumentBuilder`, `Locale.Builder`
### what constructor to use 
* handles construction by an object rather than parameters. 
* static inner class
* calls the appropriate constructer based on state 

StringBuilder demonstrates usefulness of pattern.
Telescoping constructors

Compare with prototype:
Designed to handle complex constructors
can be a separate class, can integrate with legacy code 

prototype: implemented around a clone, avoids calling complex constructors, difficult to implement in legacy code

## Prototype Pattern
Prototypical instance cloned; to get unique instance of same object
* Trying to avoid costly creation 
typically implements clone/cloneable 
avoids keyword "new"
each instance is unique
can utilize parameters for construction 
## Factory
## AbstractFactory
