/** Exercise 3: Find all the components that implement the `ScriptService` interface. */

import java

module XWiki {
  class Component extends Class {
    Component() {
      // Replace `none()` with your solution to exercise 2.
      none()
    }
  }

  class ScriptComponent extends Component {
    ScriptComponent() {
      // Replace `none()` with your solution.
      none()
    }
  }
}

select any(XWiki::ScriptComponent c)
