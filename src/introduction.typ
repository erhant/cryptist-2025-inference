
= Introduction

== whoami

- Lead Developer at *Dria*
- We are building a peer-to-peer network of

== State of AI & LLMs

Artificial Intelligence (AI), and Large Language Models (LLMs) in particular, are revolutionizing the world. Close to %10 of the entire world population is using ChatGPT alone#footnote("https://backlinko.com/chatgpt-stats").

New models are coming out every week, smashing the existing records on numerous benchmarks, with an ever increasing performance demand. #footnote("https://hai.stanford.edu/ai-index/2025-ai-index-report").

We are actually progressing faster than we though we were, as noted by powerhouse's such as OpenAI, Anthropic, and Google DeepMind#footnote("https://80000hours.org/agi/guide/when-will-agi-arrive/").

== State of AI & LLMs

Within this talk, we are specifically interested in the *inference* part of the AI/LLM stack. Inference is the process of running a trained model to make predictions or generate outputs based on new input data, as shown in @inference.

#figure(
  image("img/01_inference-1.svg"),
  caption: [
    Inference
  ],
) <inference>

== State of AI & LLMs

There are two problems with @inference though:

- Is *Server* really using `model` and `message` to generate the `output`?
- Is *Server* looking into user `message`?

These problems are denoted as *verifiable inference* and *private inference*, respectively.
