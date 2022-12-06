/** Exercise 7: Extend the `QueryInjectionSink`'s value set with the arguments of calls to the methods of the storage interface identified in exercise 5. */

import java
import semmle.code.java.security.SqlInjectionQuery

module XWiki {
  class StorageInterface extends Interface {
    StorageInterface() {
      // Replace with your solution to exercise 5.
      none()
    }
  }

  class DataStoreSink extends QueryInjectionSink {
    DataStoreSink() {
      // Replace with your solution
      none()
    }
  }
}

select any(QueryInjectionSink sink)
