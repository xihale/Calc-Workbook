#let is-answer-state = state("is-answer", false)

#let ans(it) = context {
  if is-answer-state.get() {
    text(fill: blue.darken(20%), weight: "bold", underline(stroke: 0.5pt, offset: 2pt, it))
  } else {
    underline(stroke: 0.5pt, offset: 2pt, hide(it))
  }
}

#let choice(it) = context {
  if is-answer-state.get() {
    text(fill: blue.darken(20%), weight: "bold", it)
  } else {
    hide(it)
  }
}

#let conf(
  is-answer: false,
  doc
) = {
  is-answer-state.update(is-answer)
  
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    header: context {
      let page = here().page()
      let headings = query(heading.where(level: 1))
      let active = headings.rev().find(h => h.location().page() <= page)
      if active != none {
        align(right, text(size: 9pt, style: "italic", active.body))
      }
    },
    footer: context {
      let page_num = counter(page).at(here()).first()
      align(center, text(size: 10pt)[#page_num])
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
  if is-answer {
    align(center, text(14pt, fill: blue.darken(20%))[【参考答案版】])
  }
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
            #text(fill: rgb("00509e"), weight: "bold")[【解答过程】] \
            #text(fill: rgb("003366"))[#a]
          ]
          #v(0.5em)
        ] else [
          #v(space) // Space for student work
        ]
      ] else if not show-ans {
        #v(space)
      }
    ]
  }
}

#let prob-type(title) = {
  v(1.5em)
  block(
    fill: gray.lighten(90%),
    inset: 5pt,
    radius: 3pt,
    width: 100%
  )[
    #text(12pt, weight: "bold")[#title]
  ]
  v(0.8em)
}
