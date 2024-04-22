/** Exercise 5: Find all the method calls to methods declared by the interface `XWikiStorageInterface` (with the qualified name `com.xpn.xwiki.store.XWikiStoreInterface`). */

import java

module XWiki {
  class StorageInterface extends Interface {
    StorageInterface() { this.hasQualifiedName("com.xpn.xwiki.store", "XWikiStoreInterface") }
  }
}

from MethodCall storageCall
where storageCall.getMethod().getDeclaringType() instanceof XWiki::StorageInterface
select storageCall
