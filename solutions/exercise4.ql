/** Exercise 4: Find all methods calls to the method `search` and identify its declaring type. */

import java

from RefType declaringType, MethodCall searchCall
where
  searchCall.getMethod().hasName("search") and
  searchCall.getMethod().getDeclaringType() = declaringType
select declaringType.getQualifiedName(), searchCall
