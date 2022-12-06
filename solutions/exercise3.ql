/** Exercise 3: Find all the components that implement the `ScriptService` interface. */

import java

module XWiki {
  class Component extends Class {
    Component() {
      this.getAnAnnotation()
          .getType()
          .hasQualifiedName("org.xwiki.component.annotation", "Component")
    }
  }

  class ScriptComponent extends Component {
    ScriptComponent() { this.getASupertype().hasName("ScriptService") }
  }
}

select any(XWiki::ScriptComponent c)
