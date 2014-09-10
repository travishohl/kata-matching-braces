kata-valid-braces
================

Write a function that, given a string of round '()', square '[]', and curly braces '{}', determines if the braces are matching. The function should print "1" to standard out if the braces are matching, or "0" in the alternative.

A string of braces is considered matching if all open braces are matched with a subsequent closing brace.

For example:
'(){}[]' and '([{}])' are matching , while '(}', '[(])', and '[({})](]' would be considered invalid.

Examples:
validBraces( "(){}[]" ) => returns true
validBraces( "(}" ) => returns false
validBraces( "[(])" ) => returns false
validBraces( "([{}])" ) => returns true
