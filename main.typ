#import "template/acorn-resume.typ" as resume

#let name = "Francesco Maria Fuligni"
#let email = "francescofuligni20@gmail.com"
#let github = "https://github.com/francescofuligni"
#let linkedin = "https://www.linkedin.com/in/francesco-fuligni"
#let website = "https://bento.me/fula"

#show: resume.resume.with(
  author: name,
  margin: (
    x: 1.5cm,
    y: 1.25cm,
  ),
  font: "Arial",
  font-size: 10.5pt,
  link-style: (
    underline: false,
    color: black,
  ),
)

#resume.header(
  name: name,
  contacts: (
    ("mailto:" + email, email, "../figures/icons/mail.svg"),
    (none, "Bologna, Italy", "../figures/icons/map-pin.svg"),
  ),
  contacts-second: (
    (github, "GitHub", "../figures/icons/github.svg"),
    (linkedin, "LinkedIn", "../figures/icons/linkedin.svg"),
    (website, "bento.me/fula", "../figures/icons/bento.svg"),
  ),
  photo: "../figures/cv_photo.jpg",
)

== Profile
#pad(
  top: 0.15em,
  [
    Curious about what lies beneath the surface of intelligent systems, I'm especially interested in how AI agents coordinate, where they fail, and what makes them trustworthy. I enjoy asking precise questions and turning rigorous inquiry into responsible technology with real-world value.
  ],
)

== Education
#resume.edu(
  degree: "MSc in Computer Science",
  date: "2025 – Present",
  institution: "University of Bologna",
  location: "Bologna, Italy",
)
#resume.edu(
  degree: "Erasmus+ Exchange Program",
  date: "Aug 2026 – Jan 2027",
  institution: "Stockholm University",
  location: "Stockholm, Sweden",
)

#resume.edu(
  degree: "BSc in Computer Science for Management",
  date: "2022 – 2025",
  institution: "University of Bologna",
  grade: "110/110 cum laude",
  location: "Bologna, Italy",
)
#pad(
  top: 0.15em,
  [Thesis: Organizational implications of the NIS2 Directive and the CISO's role in implementation.],
)

#resume.edu(
  degree: "High School Diploma in Applied Sciences",
  date: "2017 – 2022",
  institution: "Liceo Scientifico Enrico Fermi",
  grade: "100/100 and honours",
  location: "Bologna, Italy",
)

== Experience
#resume.exp(
  role: "Full Stack Developer Intern",
  date: "Feb 2025 – Apr 2025",
  organization: "Olio SB",
  location: "San Lazzaro di Savena (BO), Italy",
  details: [
    - Developed and maintained frontend and backend features for Olio's e-commerce management system across order processing, administration, and warehouse workflows
    - Integrated Linear and automotive parts supplier APIs, automated data exchange, and built backend controllers and services
    - Improved database query performance with indexing and data cleanup; built warehouse tracking and ticket management interfaces, improving usability and surfacing business statistics
    - *Tech Stack:* JavaScript, Node.js, AdonisJS
  ],
)

== Skills
#pad(
  top: 0.15em,
  [
    *Programming:* Java, JavaFX, JavaScript, TypeScript, Python, C++, MATLAB, PHP, Mathematica \
    *Frameworks & tools:* React, Node.js, AdonisJS, PyTorch, Jupyter \
    *Data:* MySQL, SQL/XML, XQuery, Data Warehousing, Data Mining \
    *AI & imaging:* Machine Learning, Deep Learning, CNNs, RNNs, Transformers, Generative Models, Computer Vision \
    *Digital forensics:* Evidence acquisition, preservation and analysis; chain of custody; device, network and cloud forensics \
    *Core strengths:* Problem-solving, teamwork, leadership, adaptability
  ],
)

== Languages
#pad(top: 0.15em, [*English:* C1 | IELTS Academic 8.0, November 2025])

