#let name = sys.inputs.at("name", default: "Oldmate")

#set page(paper: "a4")

#set text(
  font: "Public Sans",
  weight: "light",
  size: 16pt
)

#show heading: it => {
  set text(weight: "semibold")
  pad(top: 0.5em, bottom: 91%, it)
}

#let dummies(name) = {
  pagebreak()
  set page(margin: 0.5cm)
  stack(
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
        pad(top: 6cm,
          align(
            center,
            rotate(
              -15deg,
              pad(
                left: -1em,
                text(
                  size: 90pt,
                  fill: white,
                  weight: "black",
                  name
                )
              )
            )
          )
        )
      )
    ]
  )
  pagebreak()
}

= It really bugs me when...

= You'll have to forgive me when I...

#dummies(name)

= My superpower is...

= I feel uncomfortable in situations where...

#pagebreak()

= I do my best work when...

= The thing I love most in a collaborator is...
