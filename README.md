# Verifiable & Private Inference

> This talk explores methods for verifiable and private LLM inference, focusing on novel approaches that target the transformer model, besides the existing ZK or FHE based solutions. We will discuss the limitations of ZK and FHE, and introduce alternative techniques that enhance privacy and verifiability in LLM inference, particularly in the context of permissionless systems with trustless inference providers.
>
> _prepared for [Cryptist 2025 - Istanbul, Turkey - 04 Sep 2025](https://lu.ma/cryptistanbul)._

## Installation

This presentation is created with [Typst](https://github.com/typst/typst), using the [touying](https://github.com/touying-typ/touying) theme. You need to have **Typst** [installed](https://github.com/typst/typst?tab=readme-ov-file#installation) to build locally.

Then, simply clone the repo:

```sh
git clone git@github.com:erhant/cryptist-2025-inference
```

Diagrams are generated with [Mermaid](https://mermaid.js.org/).

## Usage

Use `open` to compile & open the presentation:

```sh
make open
```

You can also open in `watch` mode:

```sh
make watch
```

To compile the [figures](./src/img/):

```sh
make figures
```

> [!NOTE]
>
> Mermaid figures require a preamble to disable `htmlLabels`; otherwise, the rendering will have issues in Typst.
>
> ```js
> %%{ init: { "htmlLabels": false, "sequenceDiagram": { "htmlLabels": false } } }%%
> ```

## License

Licensed under the [MIT License](./LICENSE).
