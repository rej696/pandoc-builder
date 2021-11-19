---
documentclass: article
bibliography: example.bib
link-citations: true
geometry:
- margin=1in
---

# This is a Test Document
This document is testing the capabilities of my new docker container to render markdown into valid
pdf, as well as render citations and plantuml

## PlantUML
As follows, the classic plant uml example

```{#fig:uml .plantuml caption="This is an example uml diagram"}
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another Authentication Request
Alice <-- Bob: Another Authentication Response
@enduml
```

@fig:uml should be rendered as an image :)

## Citations

To test citations, I reference the lua wikipedia entry [@luawikipedia].

## Maths
This will test some maths
$$
f(a) = {\frac {1}{2\pi i}}\oint \_{\gamma }{\frac {f(z)}{z-a}}\,dz
\tag{1}
\label{1}
$$

alternatively we can use inline equations, such as $E = mc^2$ or \(a^2+b^2=c^2\)


## Bibliography
::: {#refs}
:::
