#import "template/acorn-resume.typ" as resume

#let name = "Francesco Maria Fuligni"
#let email = "francescofuligni20@gmail.com"
#let github = "https://github.com/francescofuligni"
#let linkedin = "https://www.linkedin.com/in/francesco-fuligni"
#let website = "https://linktr.ee/francescofuligni"

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
    (website, "Linktree", "../figures/icons/linktree.svg"),
  ),
  photo: "../figures/cv_photo_circle.png",
)

== Profile
#pad(
  top: 0.15em,
  [I focus on the responsible and secure use of AI and data at the intersection of technology, governance and policy. I aim to translate complex technical and regulatory requirements into practical solutions for organisations.],
)

== Education
#resume.edu(
  degree: "Master in Computer Science",
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
  degree: "Bachelor in Information Science for Management",
  date: "2022 – 2025",
  institution: "University of Bologna",
  grade: "110/110 cum laude",
  location: "Bologna, Italy",
)
#pad(
  top: 0.15em,
  [Thesis: Organizational Implications of the NIS2 Directive: The Support of International Standards and the Strategic Role of the CISO in Implementing the Regulation],
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
    - Collaborated with IT specialists and administrative staff to plan software improvements
    - *Tech Stack:* JavaScript, Node.js, AdonisJS
  ],
)

== Skills
#pad(
  top: 0.15em,
  [
    *Programming:* Java, Kotlin, Python, JavaScript, TypeScript, PHP, SQL \
    *Frameworks:* Spring Boot, Angular, React, AdonisJS, Tailwind CSS \
    *Databases:* PostgreSQL, MariaDB, SQLite, MongoDB, Redis \
    *Libraries:* TensorFlow, Keras, PyTorch, scikit-learn, NumPy, pandas, SciPy, Matplotlib \
    *Tools:* Git, GitHub, Docker, Node.js, Linear, Camunda, Google Colab \
    *Core strengths:* Critical thinking, problem-solving, communication, teamwork, leadership, adaptability
  ],
)

== Languages
#pad(top: 0.15em, [*Italian:* Native \
*English:* C1 | IELTS Academic 8.0, Nov 2025])

