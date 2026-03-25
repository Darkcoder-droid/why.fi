# Context: Phase 2 - Results Screen & Polish

## Objective
The goal is to redesign the final judgment (results) screen and the splash screen to match the retro-arcade, internet-native aesthetic established in Phase 1.

## Scope
1. Refactor the JSX for `isFree` (splash screen).
2. Refactor the JSX for `isComplete` (results screen).
3. Update `App.css` styles for `.splash-screen`, `.results-screen`, and their child elements.
4. Ensure the `.crt-overlay` effect covers these screens as well.

## Known Architecture
- Both screens are currently returned early in `WebcamCapture.tsx`.
- They lack the CRT scanline effect wrapper.
- Their CSS uses simplistic `div` wrappers that look like generic modals. We need to style them as chunky arcade game-over / victory screens with glowing metrics.
