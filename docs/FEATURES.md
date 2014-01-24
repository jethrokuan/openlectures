# Front-End Specifications
[ ] Responsive Mobile-first
[ ] Varnish Cache
[ ] Grunt + Bowe
[ ] EditorConfig

# Client-Side Features
## Universal
[ ] OAuth/OpenID/Persona Login
[ ] Flattr (for people to give us $$ if they want to)

## OL
[ ] Display Subway Map for user to navigate content
[ ] Playback Video with subtitles (if available)
[ ] Track Video Playback/Play Count, etc.

## OQ
[ ] Ask and Answer Questions
[ ] Question Tagging

## ON
[ ] Upload and Display Notes
[ ] Highlighting and Annotation
[ ] User Saving of Notes (Dropbox?)

# Database Requirements
Subject has many Topics has many Lessons has many Checkpoints
Subject has many Tracks has many Lessons has many Checkpoints

Topic: A unique collection of lessons inherently related by content. E.g. A lesson about cell membranes shares the same topic with a lesson about cell walls.

Tracks: A non-unique collection of lessons compiled by us or the user. E.g. We provide an "AP Math" Track for the user to revise, or the user compiles their own "Study" Track to match their own school curriculum.

Each subject has approx. 15 topics
Each topic has approx. 5 lessons
Each track has approx. 1 to 25 lessons
Each lesson has approx. 8 checkpoints

Topics, tracks and lessons must maintain ordering.
User must be able to specify/change ordering.

Subject has:
- _String_ Short Title (required)
- _String_ Description (required)
- _String_ Subway Map
- _String_ Image (required)

Track has:
- _String_ Short Title (required)
- _String_ Description (required)
- _String_ Image
- _tag_ Subject (required)

Topic has:
- _String_ Short Title (required)
- _int_ Ordering (required)
- _tag_ Subject (required)

Lesson has:
- _String_Short Title (required)
- _int_ Total Runtime (Sum of Checkpoint Video Durations) (required)
- _int_ Ordering (required)
- _tag_ Topic (required)
- _tag_ Track (multiple)

Checkpoint has:
- _String_ Short Title (required)
- _String_ Contributor (required, multiple)
- _String_ Description (required)
- _String_ Objective (required)
- _String_ Video URL (required)
- _String_ Question (required)
- _String_ Answer/Hint (required)
- _String_ Transcript
- _String_ Additional Resources
- _Boolean_ Watched by User (Watched means started playing the video)
- _int_ Ordering (required)
- _tag_ Lesson (required)

Question has:
- _String_ Short Title (required)
- _String_ Description (required)
- _String_ User (required)
- _int_ Views
- _Date_ Date (required)
- _tag_ Subject (required)
- _tag_ Topic
- _tag_ Lesson
- _tag_ Checkpoint
- _tag_ Difficulty

Answer has:
- _String_ Description (required)
- _String_ User (required)
- _Date_ Date (required)
- _tag_ Question (required)
- _int_ Vote Count

User has:
- _String_ Given Name (required)
- _String_ Surname (required)
- _String_ School (required)
- _String_ Class
- _String_ Race
- _int_ XP
- _String_ Items
- _String_ Viewed Lessons
- _String_ Answered Questions
- _String_ Email Address (required)
- _String_ Username (required)
- _String_ Password (required)

Contributor extends user:
- _String_ Type (Writer, Lecturer, Post-Production, Designer, Community Moderator, Octopus) (required)

# JS Requirements
[ ] MathJax (with mhchem Package) (for equation and chemistry figure supports)
[ ] Offline.js (for detecting when the user becomes disconnected)
[ ] RequireJS (for AMD loading)
[ ] mailcheck (for checking email domains)
[ ] fastclick (to polyfill for the 300ms delay on mobile browser UIs)
[ ] zxcvbn (password strength estimation)
[ ] list.js (for searching lists real-time)

# Gems
[ ] breach-mitigation-rails (for security)
[ ] secureheaders (for more security)
[ ] recommendify (for showing related checkpoints/questions)
[ ] wicked (for setting up a wizard so the user can create their character)
[ ] pg_search (for um, search)
