#import "globals.typ": *

= Veri-Split
Secure & Practical Offloading of ML Inference

== Splitting with Noise

One of the early examples of privacy-preserving inference offloading comes with Veri-Split, where they do $y = W x + b$ as follows (for a 2-device 1 user setting):

- Generate random masks $delta$ and $beta$
- Send $(W + delta)/2 , (b + beta)/2$ to one party
- Send $(W - delta)/2 , (b - beta)/2$ to other party
- Receive $y_1 = (W + delta)/2 * x + (b + beta)/2$
- Receive $y_2 = (W - delta)/2 * x + (b - beta)/2$
- Add them together to obtain $y = W x + b$

Other *non-linear* computations are kept on the user device.

#figure(
  image("img/verisplit-noise.png"),
  caption: [
    Split with Noise
  ],
) <verisplit-noise>


== Commitment with Merkle Trees

Veri-Split paper also proposes using a Merkle Tree for comitting to intermediate layers, followed by a random interactive protocol to request Merkle Proofs.

#figure(
  image("img/verisplit-merkle.png"),
  caption: [
    Merkle Tree for Intermediate Layer Commitment
  ],
) <verisplit-merkle>

Verifier can challenge the prover with random local computations, asking for their Merkle Proofs. However, this suffers from floating-point inconsistencies.
