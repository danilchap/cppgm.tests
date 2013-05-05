// thanks to Ruslan "aruslan" Abdikeev
  std::cout << "C1. This is /* not a comment */\n";
  std::cout << "C2. This is // not a comment\n";
  std::cout << "C3. This is \" /* not a comment as well*/ \"\n";
  std::cout << "C4. This is \" // not a comment as well \"\n";
  std::cout << "C5. Let's print some random numbers: " << '/*' << '*/' << '\n';
  std::cout << "C6. Let's print a random number: " << '//' << '\n';
  std::cout << "C7. This is\" '/*' not a comment '*/' \"\n";
  std::cout << "C8. This is\" '//' not a comment \"\n";
// line end
  std::cout << "F5. This is "
    // line-continuation character: \
    "SOMETHING ERRONEOUS BUT" // */

    " not a comment\n";
// trigraphs + line end
std::cout << "H5. This is obviously "

    // Trigraphs?! - what the heck???????/
    "SOMETHING ERRONEOUS BUT"
    " not a comment\n";

// gcc up to 3.2.3 fails to handle trigraphs in these contexts
std::cout << "J1. This is ??/" /* not a comment */ ??/"\n";
std::cout << "J2. This is ??/" // not a comment at all */ ??/"\n";
std::cout << "??/" '??/' '/*J3. Yeah, baby, this is NOT a comment*/' ??/"\n";
