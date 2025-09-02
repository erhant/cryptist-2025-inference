#import "globals.typ": *

= Introduction

== whoami

- Lead Developer at *Dria*#footnote("https://dria.co")
- We are building:
  - A permissionless peer-to-peer network of locally-served LLMs (\~27k nodes).
  - Special-purpose _tiny_ models#footnote("https://huggingface.co/driaforall").
  - A custom-built inference engine & compiler for distributed serving of LLMs.
  - A decentralized AI application layer over the network.

- Interested in zero-knowledge cryptography for the last ~3 years, with a focus on developer tooling & Circom.


This presentation is written in *Typst*, and is open-source at the link at the bottom of the slide.

== State of AI & LLMs

Artificial Intelligence (AI), and Large Language Models (LLMs) in particular, are revolutionizing the world. Close to %10 of the entire world population is using ChatGPT alone#footnote("https://backlinko.com/chatgpt-stats").

New models are coming out every week, smashing the existing records on numerous benchmarks, with an ever increasing performance demand#footnote("https://hai.stanford.edu/ai-index/2025-ai-index-report").

We are actually progressing faster than we though we were, as noted by powerhouse's such as OpenAI, Anthropic, and Google DeepMind#footnote("https://80000hours.org/agi/guide/when-will-agi-arrive/").

== State of AI & LLMs

Within this talk, we are specifically interested in the *inference* part of the AI/LLM stack. Inference is the process of running a trained model to make predictions or generate outputs based on new input data, as shown in @inference.

#figure(
  image("img/figures-1.svg"),
  caption: [
    Inference
  ],
) <inference>

== State of AI & LLMs

There are two problems with such an inference:

- Can we make sure that *Server* is really using `model` and `message` to generate its `output`? (Verifiable Inference)
- Can we make sure that *Server* does not see what is written in our `message` and `output`? (Privacy-Preserving Inference)

#pause

We would like to focus on *consumer-grade* model providers in particular, as they can:

- Locally serve models on their own hardware, utilizing their idle-compute on open-source models
- Join a permissionless network & earn from their services
- Decentralize the inference market, which is currently dominated by a few big players
