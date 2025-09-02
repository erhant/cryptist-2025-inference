#import "globals.typ": *

#set text(size: 20pt)
#show: university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: "Verifiable & Private Inference",
    subtitle: "Methods beyond ZK & FHE",
    short-title: "github.com/erhant/cryptist-2025-inference",
    author: "Erhan Tezcan",
    date: "4.9.2025",
    // institution: "Lead Developer @ Dria",
  ),
  config-colors(
    primary: rgb("#6463FF"), // vivid indigo
    secondary: rgb("#1D1C2B"), // midnight indigo
    tertiary: rgb("#14131D"), // near-black navy
    neutral: rgb("#5E5B82"), // slate purple-grey
    neutral-darkest: rgb("#0F0E15"), // deep black-grey
  ),
  config-methods(
    // https://touying-typ.github.io/docs/0.5.x/global-settings#global-styles
    init: (self: none, body) => {
      set text(size: 22pt)

      body
    },
  ),
)


#title-slide()
// #outline()

#include "01_introduction.typ"
#include "02_zkfhetee.typ"
#include "03_transformers.typ"
#include "04_vanilla.typ"
#include "05_verisplit.typ"
#include "06_toploc.typ"
#include "07_stip.typ"
#include "08_future.typ"

#pagebreak()

#load-bib(main: true)


// last slide title:
= Q & A
#align(center)[
  #text(size: 16pt)[
    _slides_ --- github.com/erhant/cryptist-2025-inference

    _reach out_ --- x.com/0xerhant
  ]
]

