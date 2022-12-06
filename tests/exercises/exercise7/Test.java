import com.xpn.xwiki.store.XWikiStoreInterface;

class Test {

  public void doSearch(String name) {
    XWikiStoreInterface store = null;

    store.search("SELECT * FROM table WHERE name = '" + name + "'");
  }
}