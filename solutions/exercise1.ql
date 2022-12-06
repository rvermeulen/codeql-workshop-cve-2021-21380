/** Exercise 1: Find all the methods with the name _getAverageRating_ and its declaring type. */

import java

from RefType declaringType, Method getAverageRating
where
  getAverageRating.getName() = "getAverageRating" and
  getAverageRating.getDeclaringType() = declaringType
select declaringType, getAverageRating
