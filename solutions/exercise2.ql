/** Exercise 2: Find all the classes annotated with the annotation `Component` */

import java

module XWiki {
  class Component extends Class {
    Component() {
      this.getAnAnnotation()
          .getType()
          .hasQualifiedName("org.xwiki.component.annotation", "Component")
    }
  }
}

select any(XWiki::Component c)
