#import "globals.typ": *

== Vanilla Verification

If you have a model provider that you would like to check for simple compliance, a better-than-nothing is to use *vanilla verification*.

Every few requests, you can send a procedurally generated prompt with a known output, and check if the provider returns the correct result.

- For mathematical reasoning, there are static analysis tools like Math Verify by HuggingFace.
- For code generation, you can use a sandboxed unit-test to check if the generated code works as expected.
- For text generation, you can use a set of known question-answer pairs; or simply do a string inclusion check.

== Vanilla Verification

The problem with this approach:

- Tends to report false negatives, as the model might not always return the correct output, even if it is compliant.
- Static analysis & sandbox may not work as intended.

You should provide a *margin of error*, and not ban a provider on the first failure.

_story time_
