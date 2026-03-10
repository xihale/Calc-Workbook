#let is-answer-state = state("is-answer", false)
#let q-color = black
#let p-color = blue.darken(20%)
#let a-color = red.darken(10%)

#let ans(it) = context {
  let show-ans = is-answer-state.get()
  if show-ans {
    underline(stroke: 0.5pt, offset: 2pt, text(fill: a-color, it))
  } else {
    underline(stroke: 0.5pt, offset: 2pt, hide(it))
  }
}

#let choice(it) = context {
  let show-ans = is-answer-state.get()
  if show-ans {
    text(fill: a-color, it)
  } else {
    hide(it)
  }
}

#let grad = math.op("grad")
#let div = math.op("div")
#let rot = math.op("rot")
#let Prj = math.op("Prj")


#let int = math.integral
#let iint = math.integral.double
#let iiint = math.integral.triple
#let oint = math.integral.cont
#let quad = h(1em)

#let dif = math.upright("d")
#let pd = math.partial
#let ee = math.upright("e")
#let ii = math.upright("i")

#let conf(
  is-answer: false,
  doc,
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
    },
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
    align(center, text(14pt)[【参考答案版】])
  }
  v(2em)

  outline(title: "目录", indent: auto)
  pagebreak()

  doc
}

#let question(
  q,
  p: none,
  a: none,
  space: 3cm,
) = {
  context {
    let show-ans = is-answer-state.get()
    block(width: 100%, breakable: true)[
      #text(fill: q-color)[#q]

      #if show-ans [
        #if p != none [
          #v(0.5em)
          #text(fill: p-color)[【过程】 #p]
        ]
        #if a != none [
          #v(0.5em)
          #text(fill: a-color)[【答案】 #a]
        ]
      ] else [
        #v(space)
      ]
    ]
  }
}

#let prob-type(title) = {
  v(1.5em)
  text(12pt, weight: "bold")[#title]
  v(0.8em)
}
