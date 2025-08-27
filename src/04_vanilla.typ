#import "globals.typ": *

= Challenge & Verify

== Methodology

If you have a model provider that you would like to check for simple compliance (especially for smal models), a better-than-nothing is to use a simple challenge & verify method.

You can send a procedurally generated prompt with a known output, and check if the provider returns the correct result.

- For mathematical reasoning, there are static analysis tools like MathVerify#footnote("https://github.com/huggingface/Math-Verify").
- For code generation, you can use a sandboxed unit-test to check if the generated code works as expected.
- For text generation, you can use a set of known question-answer pairs; or simply do a string inclusion check.

== Example

A simple example:

- Have a list of animals:

`["cat", "dog", "bird", "snake", "fish"]`

- Pick 2 animals, and pick 2 numbers, and generate a prompt:

`"How many legs are there in total for 3 dogs and 2 birds?"`

- Compare the model's response with the expected output using static analysis.

== Problems

There are multiple problems with this approach:

#pause
*False-negatives*: sometimes the model is just not clever, and fails the challenge. Other times, the verification process may be faulty. You should provide a *margin of error*, instead of banning on first failure.

#pause
A clever attacker could detect the challenge, and *only* run honest model for those challenges.

#pause
You need different challenges for each model, to avoid false-positives on small models acting like large ones while passing the easy challenges.

#pause
_story time_
