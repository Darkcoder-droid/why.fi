# Phase 1: Gameplay UI Overhaul - Context

**Gathered:** 2026-03-25
**Status:** Ready for planning
**Source:** PRD Express Path

<domain>
## Phase Boundary

Redesign the main gameplay screen with a funny, pixel-art aesthetic and ensure all components are well-structured.
</domain>

<decisions>
## Implementation Decisions

### UI Structure
- Live webcam feed as the main focal area.
- Strong "Target Expression" module clearly showing the required target.
- Reactive meme panel/board that updates with the currently detected emotion.
- Persistent live metrics (Why score, Boredom, Confusion, Dread, Detected face, Progress).
- Status banner / mission text / system voice messaging.
- Gallery/strip of captured successful photos.

### UX & Interactions
- Immediate, rewarding detection feedback.
- Intentional, visible cooldown state after matches.
- Celebratory and funny match confirmation.
- Meaningful, game-like motion for state changes (targets, detections, matches, scores).

### the agent's Discretion
- Specific pixel-art assets or styling techniques (e.g. CSS filters vs. SVG vs. actual pixel art).
- Animations framework (e.g. Framer Motion vs CSS transitions).
- Layout architecture (Grid/Flexbox choices).
</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Project Base
- `.planning/PROJECT.md` — Project definition
- `.planning/REQUIREMENTS.md` — v1 Requirements

</canonical_refs>

<specifics>
## Specific Ideas

- Make the experience feel like a humorous arcade challenge or internet game show.
- Use a layered background with gradients, subtle texture, shapes, or screen effects.
- Colors should be bold and intentional, with strong contrast and playful highlights.
- Avoid bland white cards on plain backgrounds.
</specifics>

<deferred>
## Deferred Ideas

- Final results screen polish (Phase 2).
</deferred>
