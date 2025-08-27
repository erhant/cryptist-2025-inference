#import "globals.typ": *

= Transformers

== The Transformer

LLMs are *neural networks* trained on massive text datasets with a sole purpose: to predict the next token in a sequence.

#pause

With that, they can generate text by outputting one token at a time, and feeding it back as input, in a loop.

This brings *emergent capabilities*: reasoning, knowledge synthesis, code generation, and much more.

== The Transformer

The dominant architecture today is the Transformer, introduced in "Attention is All You Need" (2017) #cite(<vaswani2023attentionneed>).

- Replaced RNNs with *self-attention* mechanism.
- Parallel processing enables efficient training.

#figure(
  image("img/transformer.png"),
) <transformer>

== Key Components

- *Self-Attention*: allows tokens to attend to all other tokens in sequence; multiple attention heads capture different relationships.
- *Feed-Forward Networks*: position-wise fully connected layers; provides non-linear transformations.
- *Layer Normalization & Residual Connections*: stabilizes training and enables deeper networks.

== Encoder-Decoder

The original Transformer describes both encoder and decoder:

- *Encoder*: processes input sequence, generates contextualized representations.
- *Decoder*: generates output sequence autoregressively.

This has to do with the _mask_ used within the self-attention block.

#pause

Modern LLMs are decoder-only:

- `GPT`, `LLaMA` use decoder-only architecture.
- Simpler design, better scaling properties.
- Trained with causal (left-to-right) attention mask.

We are focused on *decoder-only* models in this talk!

== Prefill vs. Decoding

There are two main steps in autoregressive inference:

- *Prefill*: initialize the context with a prompt or previous tokens. While this is compute intensive, it is highly parallelisable!
- *Decoding*: generate the output sequence one token at a time. This step is inherently sequential and cannot be parallelized.

This will be important later on.

#load-bib()
