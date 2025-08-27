// see: https://touying-typ.github.io/docs/multi-file
#import "@preview/touying:0.6.1": *
#import themes.university: *

// see: https://forum.typst.app/t/how-to-share-bibliography-in-a-multi-file-setup/1605/9

#let load-bib(main: false) = {
  counter("bibs").step()

  context if main {
    [#bibliography("references.bib") <main-bib>]
  } else if query(<main-bib>) == () and counter("bibs").get().first() == 1 {
    // this is the first bibliography, and there is no main bibliography
    bibliography("references.bib")
  }
}
