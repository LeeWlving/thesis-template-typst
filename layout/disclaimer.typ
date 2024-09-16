#let disclaimer(
  title: "",
  degree: "",
  author: "",
  submissionDate: datetime,
) = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  
  // --- Disclaimer ---  
  v(25%)
  text("In presenting this thesis in partial fulfillment of the requirements for a Master’s
degree at the University of Macau, I agree that the Library and the Faculty
of Science and Technology shall make its copies freely available for inspection.
However, reproduction of this thesis for any purposes or by any means shall not
be allowed without my written permission. Authorization is sought by contacting
the author at")

  v(15mm)
  grid(
      columns: 2,
      gutter: 1fr,
      "Munich, " + submissionDate.display("[day].[month].[year]"), author
  )
}
