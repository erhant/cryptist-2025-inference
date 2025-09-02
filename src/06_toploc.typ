#import "globals.typ": *

= TOPLOC
Locality Sensitive Hashing

== TOPLOC: Prover

TOPLOC #cite(<ong2025toploclocalitysensitivehashing>) is a novel method of _committing_ to an LLM-inference. Like Veri-Split #cite(<zhang2025verisplitsecurepracticaloffloading>), it wants to commit to inner computations of the transformer.

During inference, the prover creates a commitment to the *last hidden state* every few (~32) tokens. The hidden state has dimensions `(batch_size, seq_length, hidden_size)`, and for a single sequence (`batch_size = 1`) we have a tensor of shape `(seq_length, hidden_size)`.

#pause
- `seq_length` is the number of tokens in the input sequence
- `hidden_size` is the size of the hidden state vector for each token. (can be large, e.g. GPT-3 has dimension 12288)

TOPLOC works over the flattened hidden state, *committing* to the top-$k$ values in it.

== TOPLOC: Prover

TOPLOC uses a polynomial interpolation over the top-$k$ values this array.

- The _values_ are floating-point (FP16), so they are "treated as" 2-byte integers.
- The _indices_ are positions of these values, which may be larger than 2-bytes (65536); to map them to unique 2-byte values TOPLOC uses an _injective modulus_ $m$

#pause
In the end, we have 2-byte indices and values, which we interpolate the polynomial over. The prover sends the coefficients of this polynomial, along with $k$ and injective modulus $m$.

== TOPLOC: Verifier

#columns(2)[

  The verifier receives the output sequence along with the proof (coefficients of the polynomial, $k$, and $m$). It does a single *prefill* with this sequence to compute the hidden state locally, and extracts the top-$k$ values from it.

  Then, it evaluates the polynomial at the indices of these top-$k$ values, and checks if the results _approximately_ match the actual values for verification.

  #colbreak()

  #figure(
    image("img/figures-5.svg"),
    caption: [
      TOPLOC
    ],
  ) <inference-tee>
]





== TOPLOC

TOPLOC is vulnerable against *speculative decoding* #cite(<leviathan2023fastinferencetransformersspeculative>): using a smaller & more efficient model for _decoding_ phase (to make guesses), and then using the actual model for the _prefill_ over the generated tokens (to make corrections).

#pause
It is also susceptible to floating-point errors in some edge cases, causing honest proofs to fail. In another case, a model with FP8 values can be verified as FP16 too.

#pause
Nevertheless, it is an *efficient* and *reliable* method for model verification!

TOPLOC has a version 2 as well, which brings support for _pipeline parallelism_.

#load-bib()




