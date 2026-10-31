#let resume(
  author: none,
  font: "Calibri",
  font-size: 11pt,
  link-style: (
    color: black,
    underline: true
  ),
  margin: (
    x: 1.5cm,
    y: 1.5cm
  ),
  body,
) = {

  set document(
    author: author,
    title: author
  )

  set text(
    font: font,
    size: font-size,
    hyphenate: false,
    ligatures: false
  )

  set page(
    margin: margin
  )

  show link: it => {
    set text(
      fill: link-style.color
    )

    if link-style.underline {
      underline(it, offset: 3pt)
    } else {
      it
    }
  }

  show heading.where(level: 1):it => [
    #set text(
      size: 26pt,
      tracking: 1pt
    )
    #upper(it)
  ]

  show heading.where(level: 2):it => [
    #pad(top: 0.15em, bottom: -0.8em, upper(it.body))
    #line(length: 100%)
  ]

  set par(justify: false)

  body
}

#let header(name: none, contacts: none, contacts-second: (), photo: none) = {
  let contact-line = (items) => items.map(((url, label, icon)) => {
    let contact = [#box(image(icon, width: 8pt, height: 8pt)) #h(3pt) #label]
    if url == none {
      contact
    } else {
      link(url, contact)
    }
  }).join(" | ")
  let heading = [
    = #name
    #contact-line(contacts) \
    #contact-line(contacts-second)
  ]

  if photo == none {
    align(left, heading)
  } else {
    grid(
      columns: (1fr, 56pt),
      gutter: 10pt,
      align: (left, right),
      align(left, heading),
      align(bottom + right, image(photo, width: 52pt, height: 66pt, fit: "cover")),
    )
  }
}

#let section-header(title, date, subtitle, location: none) = grid(
  columns: (1fr, auto),
  gutter: 8pt, [*#title*],
  align(right, date),
  subtitle,
  align(right, location)
)

#let padding-top = 0.15em

#let exp(role: none, date: none, organization: none, location: none, details: none) = {
  pad(
    top: padding-top,
    section-header(role, date, organization, location: location),
  )
  details
}

#let edu(degree: none, date: none, institution: none, grade: none, location: none) = {
  let subtitle = if grade != none [
    #institution | #grade
  ] else [
    #institution
  ]

  pad(
    top: padding-top,
    section-header(degree, date, subtitle, location: location)
  )
}
