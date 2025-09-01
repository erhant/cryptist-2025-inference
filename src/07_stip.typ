#import "globals.typ": *

= STIP
Secure Transformer Inference Protocol

== Permutation Equivariance

STIP (Secure Transformer Inference Protocol) #cite(<yuan2024securetransformerinferenceprotocol>) is a novel approach to secure inference in transformer models.
The main idea comes from "Permutation Equivariance of Transformers" #cite(<xu2024permutationequivariancetransformersapplications>).

#pause
If you represent the transformer model with $y = F(x)$; if you have a permutation $pi$ you can actually do $pi y = pi F(x) = F(pi x)$.


#pause
- Row-permutations simply change the order of the input tokens, which in turn changes the order of the output tokens in a predictable way.
- Linear operations are not affected by row-permutations, they simply "carry" the permutation to their results.
- Non-linear operations are _element-wise_, so they are also not affected by row-permutations.

== Semi-Symmetrical Permutations

#columns(2)[
  The key insight of STIP is to permute matrices *semi-symmetrically*, in such a way that the operations cancel each-other out!

  Suppose $y = x A$. We generate 2 permutations: $pi, pi_c$ and permute the input and the matrix as follows:

  - $x' = x pi$
  - $A' = pi^T A pi_c$
  - $y' = x' A' = x (pi pi^T) A pi_c = x A pi_c$

  The receiver of $y'$ can re-permute to obtain $y = (x' A') pi_c^T$

  #colbreak()

  #figure(
    image("img/stip-perm.png"),
    caption: [
      STIP Permutations
    ],
  ) <stip-perm>
]


== Semi-Symmetrical Permutations

#columns(2)[

  STIP generates permutations $pi, pi_c$ for input and output, and $pi_(i, 1), pi_(i, 2), pi_(i, 3)$ for each layer $i$.

  Then, they permute all layers of the LLM with different semi-symmetrical permutations. The user receives $pi, pi_c$ and the model server receives permuted weights.

  #colbreak()

  #figure(
    image("img/stip-overview.png"),
    caption: [
      STIP Overview
    ],
  ) <stip-overview>
]

== Too Good To Be True?

There are some attacks, such as user-become-server cases; but they can be solved with efficient re-permutations#footnote[to re-permute a permuted matrix $M pi$ with $pi'$, just send $pi^T pi'$ to it!] and one-more-than-once permutations per model for multiple users and servers.

#pause
Sadly, a recent paper #cite(<thomas2025attackbreakpermutationbasedprivate>) has shown how to break the privacy guarantees of STIP, by pointing out an error in their statistical approach. They are able to break the permutation to recover the tokens as if they were unpermuted.

#pause
Nevertheless, they show that with addition of *noise* to the equation, one can still achieve privacy at the cost of accuracy using these permutations.

It's important to note that another paper #cite(<zhang2025freelunchtheoremprivacypreserving>) shows that privacy-preserving LLM inference *MUST* come with some kind of accuracy loss, i.e. "No Free Lunch".

#load-bib()
