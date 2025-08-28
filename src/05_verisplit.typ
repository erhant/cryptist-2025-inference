#import "globals.typ": *

= Veri-Split
Secure & Practical Offloading of ML Inference

== Splitting with Noise

- for non-linear parts, they use the device itself
- expensive matrix multiplication is off-loaded

https://arxiv.org/html/2405.20681v1 says privacy with noise MUST incur loss

== Commitment with Merkle Trees

Veri-Split paper also proposes using a Merkle Tree for comitting to intermediate layers, followed by a random interactive protocol to request Merkle Proofs.

#figure(
  image("img/verisplit-merkle.png"),
  caption: [
    Merkle Tree for Intermediate Layer Commitment
  ],
) <verisplit-merkle>
