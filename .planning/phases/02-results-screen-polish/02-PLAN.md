---
wave: 1
depends_on: []
files_modified:
  - frontend/src/components/WebcamCapture.tsx
  - frontend/src/App.css
autonomous: false
requirements_addressed:
  - UI-07
  - UI-08
---

# Plan 2: Results Screen & Polish

<objective>
Refactor the splash and results screens in `WebcamCapture.tsx` to use the "Meme Control Room" / retro-arcade aesthetic. Add the `.crt-overlay` and update `App.css` to feature chunky panels, neon glows, and pixel-art fonts for the final score display.
</objective>

<tasks>

<task>
<description>Refactor WebcamCapture.tsx Splash and Results Screens</description>
<read_first>
- frontend/src/components/WebcamCapture.tsx
</read_first>
<action>
1. In `WebcamCapture.tsx`, locate the `if (isFree)` block. Wrap its return contents in `<div className="webcam-shell"><div className="crt-overlay"></div>...</div>` so it maintains the arcade monitor look.
2. Do the same for the `if (isComplete)` block: wrap the return in `<div className="webcam-shell"><div className="crt-overlay"></div>...</div>`.
3. Update specific class names or structure if necessary to create a "Game Over" / "Final Judgment" vibe (e.g., wrap the stats in arcade-like leaderboards). Ensure `quit-btn` and `enter-btn` classes remain for functionality.
</action>
<acceptance_criteria>
- `isFree` return contains `<div className="crt-overlay"></div>`
- `isComplete` return contains `<div className="crt-overlay"></div>`
</acceptance_criteria>
</task>

<task>
<description>Update App.css for Splash and Results Screens</description>
<read_first>
- frontend/src/App.css
</read_first>
<action>
1. In `App.css`, apply the Phase 1 dark theme variables to `.results-screen`, `.splash-screen`, `.results-panel`, and `.splash-content`.
2. Give `.results-panel` and `.splash-content` a chunky arcade border (`border: 2px solid var(--brand-primary); box-shadow: 0 0 20px rgba(255, 0, 85, 0.4);`) and dark background (`var(--panel-bg)`).
3. Ensure `.metric-card` uses `var(--heading)` for the numbers and a secondary glowing border.
4. Style the `EXIT SIMULATION` and `RETURN TO FULLSCREEN` buttons as retro arcade buttons (e.g., chunky borders, uppercase pixel font, hover states that invert colors or increase glow).
</action>
<acceptance_criteria>
- `.results-panel` uses `var(--brand-primary)` and `var(--panel-bg)`
- Buttons have pixel-art arcade styling.
- `npm run build` exits 0.
</acceptance_criteria>
</task>

</tasks>

<verification>
1. Start the React dev server from `frontend/` directory.
2. Force the app to show the Results screen (or play through 5 captures).
3. Visually verify the CRT scanlines appear.
4. Verify the Results panel sits in a dark styled container rather than a generic white/grey popover.
5. Verify button typography matches the retro pixel-art aesthetic.
</verification>

<must_haves>
- The UI MUST incorporate the `.crt-overlay` effect on the results and splash screens.
- The UI MUST NOT resemble a generic SaaS dashboard.
- The average metrics MUST remain highly visible.
</must_haves>
