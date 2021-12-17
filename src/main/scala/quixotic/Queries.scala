package quixotic

import quixotic.QuillContext._
import quixotic.model.Person

object Queries {

  final val largeAge = 100

  val personsOlderThan =
    quote { (age: Int) =>
      query[Person].filter(person => person.age > largeAge)
    }
}
