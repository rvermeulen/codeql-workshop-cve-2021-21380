/** Exercise 6: Extend the `RemoteFlowSource`'s value set with the parameters of the public methods of the component classes identified in exercise 3. */

import java
import semmle.code.java.dataflow.FlowSources

module XWiki {
  class Component extends Class {
    Component() {
      // Replace `none()` with your solution to exercise 2.
      none()
    }
  }

  class ScriptComponent extends Component {
    ScriptComponent() {
      // Replace `none()` with your solution to exercise 3.
      none()
    }
  }

  class ScriptComponentMethodParameterSource extends RemoteFlowSource {
    ScriptComponentMethodParameterSource() {
      // Replace `none()` with your solution
      none()
    }

    override string getSourceType() { result = "XWiki component method parameter" }
  }
}

select any(RemoteFlowSource s)
