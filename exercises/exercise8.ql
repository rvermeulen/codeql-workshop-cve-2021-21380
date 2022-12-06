/**
 * Exercise 8: Combine your solutions from the previous exercise into a final solution.
 *
 * @name XWiki ratings SQLi
 * @description SQL injection vulnerability in XWiki's ratings component. Disable the component or upgrade to resolve the issue.
 * @id java/cve-2021-21380
 * @kind path-problem
 * @problem.severity error
 * @precision high
 * @tags security external/cwe/cwe-89
 */

import java
import semmle.code.java.dataflow.TaintTracking
import semmle.code.java.dataflow.FlowSources
import semmle.code.java.security.SqlInjectionQuery
import DataFlow::PathGraph

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
      // Replace `none()` with your solution to exercise 6.
      none()
    }

    override string getSourceType() { result = "XWiki component method parameter" }
  }

  class StorageInterface extends Interface {
    StorageInterface() {
      // Replace with your solution to exercise 5.
      none()
    }
  }

  class DataStoreSink extends QueryInjectionSink {
    DataStoreSink() {
      // Replace with your solution to exercise 7.
      none()
    }
  }
}

from QueryInjectionFlowConfig cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink, source, sink, "Possible query injection from $@", source.getNode(), "source"
