#import "globals.typ": *

= ZK & FHE & TEE

== Zero-Knowledge Proofs (ZK)

A zero-knowledge proof proves knowledge of a secret information without revealing it. For example, you can tell "I know the preimage to some SHA256 digest".

#pause

It has three notable properties:

- *Completeness*: If the statement is `true`, an honest prover can convince any verifier.
- *Soundness*: If the statement is `false`, no dishonest prover can convince the verifier.
- *Zero-Knowledge*: If the statement is `true`, the verifier learns nothing beyond it being `true`.

== Zero-Knowledge Proofs (ZK)

#figure(
  image("img/01_inference-2.svg"),
  caption: [
    Inference with ZK
  ],
) <inference-zk>

Within LLM inference, a ZK-proof tells you that indeed your chosen model was used for inference (@inference-zk). It does NOT hide the user prompt though, because the proof *requires* processing the prompt.


== Fully Homomorphic Encryption (FHE)

FHE allows computation on encrypted data without decrypting it.

- $"Enc"(a) + "Enc"(b) = "Enc"(a + b)$
- $"Enc"(a) * "Enc"(b) = "Enc"(a * b)$

This allows one to hide the input & output data during inference.

#figure(
  image("img/01_inference-3.svg"),
  caption: [
    Inference with FHE
  ],
) <inference-fhe>


== Trusted Execution Environments (TEE)

TEEs are hardware-based secure enclaves (Intel SGX, ARM TrustZone, AMD SEV). They ensure isolated execution with memory encryption, along with a remote attestation to prove code integrity.

We get both the privacy and verifiability at once here, at the cost of a trusted attestion service and hardware.

#figure(
  image("img/01_inference-4.svg"),
  caption: [
    Inference with TEE
  ],
) <inference-tee>

== Problems with ZK & FHE & TEE

All of these methods so far have drawbacks that limit their applicability in real-world scenarios #cite(<zhang2025verisplitsecurepracticaloffloading>) #cite(<modulus2023>).

#pause

- LLMs make use of floating point arithmetic, bad for the finite field arithmetic in ZK and FHE.

- TEEs require a trusted hardware environment. Furthermore, they operate in rather memory and compute constrained environments; yet still are open to side-channel attacks *CITEME*.

- These make it even harder for practical deployment in real-world applications, especially on consumer-grade devices.

#load-bib()
