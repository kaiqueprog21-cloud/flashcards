## About the project

Flashcards lets users create their own study cards (front/back), organize them into sets, and review the content through an interactive study mode, in a "correct/incorrect" style. The project was designed with a focus on a clean, purposeful visual experience, aligned with the interface design best practices covered in the course.

## Features

- **Dashboard (Home)**: overview of the user's progress, including study streak, number of active sets, and mastered cards.
- **Card creation**: form for creating new flashcards, with front, back, and an optional image upload for visual association.
- **Study mode**: flashcards displayed one at a time, with the option to flip the card and mark the answer as correct or incorrect.
- **Image upload**: visual association images are stored in a Supabase Storage bucket and linked to the corresponding card.

## Tech stack

- **Vue.js 3** (Composition API / `<script setup>`)
- **Nuxt.js** (page routing, layouts via `definePageMeta`)
- **Supabase** (database and image storage)
- **CSS**, with the *Plus Jakarta Sans* font

## Project structure

```
├── pages/
│   ├── index.vue        # Main dashboard
│   ├── new-card.vue     # New card creation screen
│   └── study.vue        # Card study/review screen
├── components/
│   ├── card.vue          # Stat card (e.g. "Active Sets", "Mastered")
│   ├── progress.vue      # Progress component
│   ├── StudyCard.vue     # Recent study set card
│   └── input.vue         # Reusable input field
└── style.css              # Global styles shared across pages
```

## Design

The project's visual identity follows a focused palette, with blue as the main action color:

| Element | Color |
|---|---|
| Primary button (Save) | `#004AC6` |
| Highlight / View | `#2563EB` |
| Secondary text | `#434655` / `#737686` |
| Positive feedback (Correct) | `#009c6b` |
| Negative feedback (Incorrect) | `#f74e4e` |

- **Typography**: Plus Jakarta Sans, in different weights (500 and 800) to establish hierarchy between titles and body text.
- **Componentization**: UI elements (cards, inputs, buttons) were isolated into reusable components, following the principle of visual consistency across screens.


> Supabase connection environment variables (project URL and public key) need to be configured for card creation and image upload to work correctly.

# Nuxt Minimal Starter

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install

# bun
bun install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm dev

# yarn
yarn dev

# bun
bun run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm build

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
