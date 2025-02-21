#set page(paper: "a4")

#set text(
  font: "Public Sans",
  weight: "light",
  size: 16pt
)

#show heading: it => {
  set text(weight: "semibold")
  pad(top: 0.5em ,bottom: 0.5em, it)
}

#pagebreak()
#stack(
  dir: ltr,
  spacing: -100%,
  [
    #box(
      image("for-dummies-cover.jpg", fit: "contain", width: 100%, height: 100%)
    )
  ],
  [
    #box(
      width: 100%,
      pad(top: 76%,
        align(
          center,
          rotate(
            -15deg,
            text(
              size: 70pt,
              fill: white,
              weight: "black",
              "Ben"
            )
          )
        )
      )
    )
  ]
)
#pagebreak()

= Introduction

This is a chance for you to write the book on working with you...
for dummies. Tell us what you're like, what your yucks and yums are,
and how we can best work with you.
