#let is-answer-state = state("is-answer", false)

#let conf(
  is-answer: false,
  doc
) = {
  is-answer-state.update(is-answer)
  
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    header: context {
      let elems = query(heading.where(level: 1))
      if elems.len() > 0 {
        align(right, text(size: 9pt, style: "italic", elems.last().body))
      }
    },
    footer: context {
      align(center, text(size: 10pt, counter(page).display("1")))
    }
  )

  set text(font: ("Times New Roman", "Noto Serif CJK SC", "SimSun"), size: 10.5pt)
  set par(justify: true, leading: 0.8em)
  set heading(numbering: "1.1")

  show heading: it => {
    v(0.6em)
    it
    v(0.6em)
  }

  show outline.entry.where(level: 1): it => {
    v(1em, weak: true)
    strong(it)
  }

  align(center, text(20pt, weight: "bold")[高等数学习题册（下册）])
  v(2em)

  outline(title: "目录", indent: auto)
  pagebreak()

  doc
}

#let question(
  q, 
  a: none,
  space: 3cm
) = {
  context {
    let show-ans = is-answer-state.get()
    block(width: 100%, breakable: true)[
      #q
      
      #if a != none [
        #if show-ans [
          #v(0.5em)
          #block(fill: rgb("f0f8ff"), inset: 10pt, radius: 5pt, width: 100%)[
            #text(fill: rgb("00509e"), weight: "bold")[【答案与解析】] \
            #text(fill: rgb("003366"))[#a]
          ]
          #v(0.5em)
        ] else [
          #v(0.5em)
          #hide[
            #block(inset: 10pt, width: 100%)[
              【答案与解析】 \
              #a
            ]
          ]
          #v(space) // Additional space for drafting
        ]
      ] else [
        #if show-ans [
          #v(0.5em)
          #block(fill: rgb("fff5f5"), inset: 10pt, radius: 5pt, width: 100%)[
            #text(fill: rgb("a40000"), weight: "bold")[【答案缺失】]
          ]
          #v(0.5em)
        ] else [
          #v(space)
        ]
      ]
    ]
  }
}

// Support for problem types
#let prob-type(title) = {
  v(1em)
  text(12pt, weight: "bold")[#title]
  v(0.5em)
}
