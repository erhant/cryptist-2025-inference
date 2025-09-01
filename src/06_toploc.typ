#import "globals.typ": *

= TOPLOC
Locality Sensitive Hashing

== TOPLOC

TOPLOC #cite(<ong2025toploclocalitysensitivehashing>) is a novel method of _committing_ to an LLM-inference.

During inference, the prover creates a commitment to the *last hidden state* every few tokens.

== TOPLOC

It is vulnerable against *speculative decoding* #cite(<leviathan2023fastinferencetransformersspeculative>): using a smaller & more efficient model for _decoding_ phase (to make guesses), and then using the actual model for the _prefill_ over the generated tokens (to make corrections).


== TOPLOC

TOPLOC has a version 2 as well, which brings support for pipeline parallelism!

#load-bib()




