#let titlepage(
  title: "",
  // titleGerman: "",
  degree: "",
  program: "",
  supervisor: "",
  advisors: (),
  author: "",
  startDate: datetime,
  submissionDate: datetime,
) = {
  // Quality checks
  // assert(degree in ("Bachelor", "Master"), message: "The degree must be either 'Bachelor' or 'Master'")
  
  set page(
    margin: (left: 20mm, right: 20mm, top: 30mm, bottom: 30mm),
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

  set par(leading: 0.5em)

  
  // --- Title Page ---
  // v(1cm)
  // align(center, image("/figures/tum_logo.png", width: 26%))

  v(8mm)
  

  align(center, text(font: sans-font, 2em, weight: 700, title))
  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, "by"))

  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, author))
  v(5mm)
  align(center, text(font: sans-font, 1.5em, weight: 100, "A thesis submitted in partial fulfillment of the \n requirements for the degree of"))
  
  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, degree + " in " + program))
  
  

  // align(center, text(font: sans-font, 2em, weight: 500, titleGerman))

  let entries = ()
  // entries.push(("Author: ", author))
  entries.push(("Approved by ", ""))
  // Only show advisors if there are any
  if advisors.len() > 0 {
    entries.push(("Advisors: ", advisors.join(", ")))
  }
  entries.push(("Start Date: ", startDate.display("[day].[month].[year]")))
  // entries.push(("Submission Date: ", submissionDate.display("[day].[month].[year]")))

  v(1cm)
  align(
    center,
    grid(
      columns: 2,
      gutter: 1em,
      // align: left,
      ..for (term, desc) in entries {
        (align(left,strong(term)), underline(desc))
      }
    )
  )
//   align(center, 
//   grid(
//   columns: 2,
//   rows: 4,
//   gutter: 1em,
//   "Approved by ", underline("", extent: 3cm),
//   "","Supervisior",
//   "","",
//   "","",
//   // grid.cell(
//   //   colspan: 2,
//   //   image("tiger.jpg", width: 100%),
//   // ),
// )
//   )
}
