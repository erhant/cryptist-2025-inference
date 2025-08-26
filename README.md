# Verifiable & Private Inference

> This talk explores methods for verifiable and private LLM inference, focusing on novel approaches that target the transformer model, besides the existing ZK or FHE based solutions. We will discuss the limitations of ZK and FHE, and introduce alternative techniques that enhance privacy and verifiability in LLM inference, particularly in the context of permissionless systems with trustless inference providers.
>
> _prepared for [Cryptist 2025 - Istanbul, Turkey - 04 Sep 2025](https://lu.ma/cryptistanbul)._

## Installation

This presentation is created with [Typst](https://github.com/typst/typst), using the [touying](https://github.com/touying-typ/touying) theme. You need to have **Typst** installed to build locally.

Then, simply clone the repo:

```sh
git clone git@github.com:erhant/cryptist-2025-inference
```

Diagrams are generated with [Mermaid CLI](https://mermaid.js.org/).

## Usage

To serve this presentation in your browser, run:

```sh
make watch
```

To export the slides to PDF format, run:

```sh
make open
```

To compile the [figures](./src/img/):

```sh
make figures
```

## License

Licensed under the [MIT License](./LICENSE).
