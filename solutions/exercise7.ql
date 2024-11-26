/** Exercise 7: Extend the `QueryInjectionSink`'s value set with the arguments of calls to the methods of the storage interface identified in exercise 5. */

import java
import semmle.code.java.security.SqlInjectionQuery

module XWiki {
  class StorageInterface extends Interface {
    StorageInterface() { this.hasQualifiedName("com.xpn.xwiki.store", "XWikiStoreInterface") }
  }

  class DataStoreSink extends QueryInjectionSink {
    DataStoreSink() {
      exists(StorageInterface storeInterface, MethodCall storeCall |
        storeCall.getQualifier().getType() = storeInterface
      |
        storeCall.getAnArgument() = this.asExpr()
      )
    }
  }
}

select any(QueryInjectionSink sink)
