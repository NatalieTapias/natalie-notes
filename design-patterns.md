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
* often used to get a unique instance of same object
* avoid costly creation; also avoid subclassing
* usually implemented with a Registry 
* often utilizes interface
`java.lang.Object#clone()`

Just changes the way we call the keyword new. Implements clone/cloneable method and interface. If creation is expensive, using clone, each instance is unique. 
Prototypical instance cloned; to get unique instance of same object
Shallow VS Deep Copy 
Getting a unique instance whenever you ask for the object back 
Pitfalls:
* Sometimes not clear when to use
* Used with other patterns (ex: a registry)

contrast: 
prototype: lighterweight using constructor/clone ; can chose to do shallow/deep copy, just makes copy of itself
factory: focused on dealing with flexible objects based on request, mulitple constructors, concrete instance & fresh instance (no programmatic defaults by nature)

### summary
use this pattern to guarantee unique instance every time you ask for it 
often it is refactored in to help with performance issues 

## Factory
Concepts: 
* doesn't expose instantiation logic 
* defers creation logic to sublcasses 
* client only knows about interface 
* specified by architecture, implemented by user 
examples in Java API : `Calendar, ResourceBundle, NumberFormat`

### Factory
Factory Class with static factory method, called in concrete class, returns object type for us 

Example: Calendar Class 
```Calendar cal = Calendar.getInstance();
System.out.println(cal);
System.out.println(cal.get(Calendar.DAY_OF_MONTH);
```
// gregorian calendar 
Calendar cal = Calendar.getInstance(parameter for type of calendar);
then, the first printl is whatever type I have called 

Problem statement 
Exercise Factory 
Crete Pages
Create Website 
Create Concrete Classes 
Create Factory

-----------
```
public class ContactPage extends Page {

}

public class CartPage extends Page {

}

public abstract class Page {

}


public abstract class Website {
  protected List<Page> pages = new ArrayList<>();

  public Website() {
    this.createWebsite();
  }

  public List<Page> getPages() {
    return pages;
  }

// all that implement this abstract class must implement this create website
  public abstract void createWebsite();

}

public class Blog extends Website {
  @Override 
  public void createWebsite() {
    pages.add(new PostPage());
    pages.add(new AboutPage();
    // putting pages in here that are specific to the blog
    pages.add(new CommentPage());
    pages.add(new ContactPage());
    // the base class has nothing to with the creation
    // blog is concerned with creating the implementation 
  }
}


public classs Shop extends Website {
  @Override 
  public void createWebsite() {
    pages.add(new CartPage());
    pages.add(new ContactPage());
    pages.add(new ItemPage());
  }
}
```

// factory typically named ClassNameFactory
```
public class WebsiteFactory {
  public static Website getWebsite(String siteType) {
    switch(siteType) {
      case "blog" : {
        return new Blog();
      }
      case "shop" : {
        return new Shop();
      }
      default : {
        return null;
      }
    }
  }
}
```
### pitfalls
complexity! Creation doesn't take place in the factory, it takes place in the sublcass
not refactored into, you need to design in beginning and then plan accordingly 

contrasting with singleton 
singleton: returns same instance

factory: interface driven (very contract driven) always subclasses involved 
## AbstractFactory
