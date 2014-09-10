kata-valid-braces
================

Write a function that, given a string of round '()', square '[]', and curly braces '{}', determines if the braces are matching. The function should print "1" to standard out if the braces are matching, or "0" in the alternative.

A string of braces is considered matching if all open braces are matched with a subsequent closing brace. For example, `(){}[]` and `([{}])` are matching , while `(}`, `[(])`, and `[({})](]` would be considered not matching.

Examples:
---------

	irb(main):001:0> "(){}[]".braces_matching?
	=> true
	irb(main):002:0> "(}".braces_matching?
	=> false
	irb(main):003:0> "[(])".braces_matching?
	=> false
	irb(main):004:0> "([{}])".braces_matching?
	=> true
