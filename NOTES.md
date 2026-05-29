# AeroRecall

AeroRecall is a study app for FAA ground school infographics.

## MVP

- Show study decks
- Show one infographic at a time
- Ask questions about the infographic
- Give immediate feedback
- Track progress
- Move to the next card


## Data Model

Study Deck
- Weather
- Airspace
- Navigation
- Regulations
- Aerodynamics

Study Card
- Title
- Description
- Image
- Belongs to a deck

Question
- Belongs to a study card
- Question text
- Multiple choice answers
- Correct answer

User Progress
- User
- Study card
- Complete / Incomplete
- Score