## Inference

```mermaid
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "sequenceDiagram": { "htmlLabels": false } } }%%

sequenceDiagram
  participant C as Client
  participant S as Server

  C->>S: (1) model, message
  S->>C: (2) output
```

## Inference with ZK

```mermaid
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "sequenceDiagram": { "htmlLabels": false } } }%%

sequenceDiagram
  participant C as Client
  participant S as Server

  C->>S: (1) model, message
  note over S: generate proof
  S->>C: (2) output, proof
  note over C: verify proof
```

## Inference with FHE

```mermaid
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "sequenceDiagram": { "htmlLabels": false } } }%%

sequenceDiagram
  participant C as Client
  participant S as Server

  note over C: encrypt message
  C->>S: (1) model, encrypted message
  note over S: compute on encrypted data
  S->>C: (2) encrypted output
  note over C: decrypt output
```

## Inference with TEE

```mermaid
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "sequenceDiagram": { "htmlLabels": false } } }%%

sequenceDiagram
  participant C as Client
  participant S as Server

  note over C, S: verify attestation
  C->>S: (1) encrypted(model, message)
  note over S: compute in secure enclave
  S->>C: (2) encrypted(output)
  note over C: decrypt
```

## TOPLOC

```mermaid
sequenceDiagram
  participant V as Verifier
  participant P as Prover

  note over V, P: k for top-k
  V ->> P: "message"
  note over P: LLM = PrefillDecode(message)
  note over P: output = LLM.out
  note over P: h = LLM.last_hidden_state
  note over P: P, m = commit(h)

  P ->> V: P, m, output
  note over V: LLM = Prefill(output)
  note over V: h = LLM.last_hidden_state
  note over V: compare local top-k to P with m
```
