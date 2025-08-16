import gleam/list
import gleeunit
import houdinis_publicist

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn simple_conversions_test() {
  let tests = [
    #("a", "a"),
    #("abcd", "abcd"),
    #("ab cd", "\"ab cd\""),
    #("a\"", "\"a&quot;\""),
  ]

  list.each(tests, fn(tup) {
    assert houdinis_publicist.escape_attribute(tup.0) == tup.1
  })
}
