#import "globals.typ": *

= Future
What Next?

== Future

- It is obvious that ZK / FHE / TEE require some forms of breakthrough to make it into every-day usage.

#pause
- However, we can come up with methods that are specifically tailored for LLM inference & transformers, and make use of the properties of the models themselves.

- Permutation based methods with noise & per-token hidden state commitments are promising, and they are *compatible* with each other; so maybe we can get privacy preserving & verifiable inference in the end.

#pause
- Even further, these methods are _pipeline-parallelism_ safe, so multiple devices can work together to create these proofs for their "portions" of the whole LLM.
#load-bib()
