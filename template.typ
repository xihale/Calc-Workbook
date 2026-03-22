#let palette = (
  ink: rgb("#23262d"),
  ink_soft: rgb("#70757f"),
  accent: rgb("#5b616b"),
  solution: rgb("#6a7079"),
  answer: rgb("#4a5a70"),
  border: rgb("#dfe3ea"),
  border_strong: rgb("#c4ccd8"),
  surface: white,
)

#let text_fonts = ("New Computer Modern", "Times New Roman", "Noto Serif CJK SC", "SimSun")
#let math_fonts = ("New Computer Modern Math", "Noto Serif CJK SC", "SimSun")

#let is-answer-state = state("is-answer", false)
#let inline-answer-state = state("inline-answer", false)
#let q-color = palette.ink
#let p-color = palette.solution
#let a-color = palette.answer

#let card(
  body,
  fill: none,
  stroke: none,
  inset: (x: 0.95em, y: 0.72em),
  radius: 5pt,
) = block(
  width: 100%,
  breakable: true,
  fill: fill,
  stroke: stroke,
  inset: inset,
  radius: radius,
)[#body]

#let badge(label, fill: palette.ink_soft) = text(size: 8.35pt, weight: "bold", fill: fill)[#label]

#let rail(
  label,
  body,
  label_fill: palette.ink_soft,
  body_fill: palette.ink,
  body_size: 10.35pt,
  body_weight: "regular",
  gutter: 0.58em,
) = grid(
  columns: (2.2em, 1fr),
  column-gutter: gutter,
  row-gutter: 0pt,
  [
    #v(0.14em)
    #text(size: 8.2pt, weight: "medium", tracking: 0.02em, fill: label_fill)[#label]
  ],
  [
    #set text(size: body_size, weight: body_weight, fill: body_fill)
    #body
  ],
)

#let sol-eq(body) = body

#let ans(it) = context {
  inline-answer-state.update(true)
  let show-ans = is-answer-state.get()
  if show-ans {
    underline(stroke: (paint: palette.answer, thickness: 0.45pt), offset: 3pt, text(fill: a-color, weight: "medium", it))
  } else {
    underline(stroke: (paint: palette.border_strong, thickness: 0.45pt), offset: 3pt, hide(it))
  }
}

#let choice(it) = context {
  let show-ans = is-answer-state.get()
  if show-ans {
    let raw = repr(it)
    if raw.contains("√") {
      text(fill: a-color)[#sym.checkmark]
    } else if raw.contains("×") {
      text(fill: a-color)[#sym.crossmark]
    } else {
      text(fill: a-color, weight: "bold")[#it]
    }
  } else {
    box(
      width: 1.55em,
      height: 1.05em,
      stroke: (paint: palette.border_strong, thickness: 0.4pt),
      radius: 1.5pt,
    )[]
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
#let quad = h(0.8em)
#let parallel = math.class("relation", sym.slash + h(-0.15em) + sym.slash)

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
    margin: (x: 2cm, y: 1.9cm),
    header: context {
      let current_page = here().page()
      let headings = query(heading.where(level: 1))
      let active = headings.rev().find(h => h.location().page() <= current_page)
      set text(size: 8.4pt, fill: palette.ink_soft)
      block(width: 100%)[
        #if active != none [#active.body] else [高等数学习题册（下册）]
        #h(1fr)
        #counter(page).display()
      ]
    },
    footer: context {
      []
    },
  )

  set text(font: text_fonts, size: 10.35pt, fill: palette.ink)
  set par(justify: false, leading: 1.54em)
  set heading(numbering: "1.1")

  show math.equation: set text(font: math_fonts)
  show math.equation.where(block: true): set block(above: 0.92em, below: 1.12em, breakable: true)

  show heading.where(level: 1): it => [
    #pagebreak(weak: true)
    #v(0.5em)
    #text(size: 14.4pt, weight: "medium", fill: palette.ink)[#it]
    #v(0.72em)
  ]

  show heading.where(level: 2): it => [
    #v(0.88em)
    #text(size: 11.5pt, weight: "medium", fill: palette.ink)[#it]
    #v(0.34em)
  ]

  show outline.entry.where(level: 1): set text(size: 10.75pt, weight: "medium", fill: palette.ink)

  show outline.entry.where(level: 2): set text(size: 9.85pt, fill: palette.ink_soft)

  align(center, block(width: 100%)[
    #v(1.8em)
    #text(20.8pt, weight: "medium", fill: palette.ink)[高等数学习题册（下册）]
    #v(0.5em)
    #text(10.4pt, fill: palette.ink_soft)[多元函数微分法、重积分、曲线曲面积分与无穷级数]
    #v(0.7em)
    #text(10pt, fill: if is-answer { palette.answer } else { palette.accent }, weight: "bold", tracking: 0.03em)[
      #if is-answer [【参考答案版】] else [【习题版】]
    ]
    #v(1.05em)
  ])
  v(1.3em)

  outline(title: text(fill: palette.ink, weight: "bold")[目录], depth: 2, indent: auto)
  pagebreak()

  doc
}

#let question(
  q,
  p: none,
  a: none,
  space: 2.7cm,
) = {
  context {
    let show-ans = is-answer-state.get()
    let redundant_answer = a != none and p != none and repr(a) == repr(p)
    let answer_repr = if a == none { "" } else { repr(a) }
    let answer_looks_like_process = answer_repr.len() > 96 or answer_repr.contains("设") or answer_repr.contains("记") or answer_repr.contains("由") or answer_repr.contains("提示") or answer_repr.contains("证明") or answer_repr.contains("先")

    block(width: 100%, breakable: true, below: if show-ans { 0.8em } else { 1.1em })[
      #inline-answer-state.update(false)
      #set par(justify: false, leading: 1.6em)
      #set text(size: 10.72pt, weight: "medium", fill: q-color)
      #q
      #let has_inline_answer = inline-answer-state.get()
      #let show_answer_line = a != none and not has_inline_answer and not redundant_answer and (p == none or not answer_looks_like_process)

      #if show-ans [
        #if p != none [
          #v(0.58em)
          #pad(left: 0.85em)[
            #if show_answer_line [
              #set par(justify: false, leading: 1.86em, spacing: 0em)
              #set text(size: 10.18pt, weight: "semibold", fill: palette.answer)
              #a
              #v(0.5em)
            ]
            #set par(justify: false, leading: 1.86em, spacing: 0em)
            #set text(size: 10pt, fill: palette.solution)
            #p
          ]
          #v(1.48em)
        ] else if show_answer_line [
          #v(0.58em)
          #pad(left: 0.85em)[
            #set par(justify: false, leading: 1.86em, spacing: 0em)
            #set text(size: 10.18pt, weight: "semibold", fill: palette.answer)
            #a
          ]
          #v(1.48em)
        ]
      ] else [
        #v(0.46em)
        #pad(left: 0.85em)[
          #text(size: 8.6pt, fill: palette.ink_soft)[作答]
          #v(0.22em)
          #v(space)
        ]
      ]
    ]
  }
}

#let prob-type(title) = {
  v(1.24em)
  text(10.85pt, weight: "bold", fill: palette.accent, tracking: 0.02em)[#title]
  v(0.38em)
}
