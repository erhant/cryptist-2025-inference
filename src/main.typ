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
    institution: "Lead Developer @ Dria",
  ),
  config-colors(
    primary: rgb("#B7410E"), // rust orange
    secondary: rgb("#EC5800"), // bright rust
    tertiary: rgb("#F74C00"), // warm orange
    neutral: rgb("#2C2C2C"), // dark grey
    neutral-darkest: rgb("#1C1C1C"), // darker grey
  ),
)


#title-slide()
// #outline()

#include "01_introduction.typ"
#include "02_zkfhetee.typ"
#include "03_transformers.typ"
#include "04_vanilla.typ"
#include "05_splitting.typ"
#include "06_stip.typ"
#include "07_toploc.typ"

#load-bib(main: true)


= Thank You!
