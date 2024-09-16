#let cover(
  title: "",
  degree: "",
  program: "",
  author: "",
  year: "",
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

  
  // --- Cover ---

  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, title))
  v(1cm)
  align(center, text(font: sans-font, 1.5em,  "by"))
  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 500, author))
   v(1cm)

  align(center, text(font: sans-font, 1.3em, weight: 100, degree + " in " + program))
  v(15mm)
  

  align(center, text(font: sans-font, 2em, weight: 700, year))
  
  v(10mm)
  
  align(center, image("../figures/umaclogo.png", width: 26%))
  v(15mm)
  align(center, text(font: sans-font, 1.5em, weight: 100, "Faculty of Science and Technology \n University of Macau"))
  
  
}