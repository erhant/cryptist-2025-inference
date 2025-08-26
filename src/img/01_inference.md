```mermaid
---
title: Inference
---
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "flowchart": { "htmlLabels": false } } }%%

flowchart LR
    C[Client]
    S[Server]

    C -- (1) model, message --> S
    S -- (2) output --> C
```

```mermaid
---
title: Inference with ZK
---
%% the command below is needed for svg rendering in typst %%
%%{ init: { "htmlLabels": false, "flowchart": { "htmlLabels": false } } }%%

flowchart LR
    C[Client]
    S[Server]

    C -- (1) model, message --> S
    S -- (2) output, proof --> C
```
