# El Paso Rhinos — Sponsor Portal Demo

A pitch-closing demo site built for the **2026-05-18 in-person meeting with Shea Sherman** at 601 Woodland Ave.

This is NOT a production sponsor portal — it's a one-page visual demo of what a custom-built portal would look and feel like. Goal: walk Shea through it on her phone Monday morning and close the engagement.

## Quick Facts

- **Live URL:** https://rhinos-sponsor-portal.netlify.app
- **GitHub repo:** https://github.com/diegogallardodg-prog/rhinos-sponsor-portal
- **Netlify site ID:** `8c373e91-f31f-49ae-bf5b-b0950e678d53`
- **Netlify admin:** https://app.netlify.com/projects/rhinos-sponsor-portal
- **Built:** 2026-05-15 · color refit to Rhinos orange/black 2026-05-15
- **Stack:** Static HTML + Tailwind CDN + custom CSS, no build step
- **Hosting:** Netlify (StitchHook team)
- **Auto-deploy:** ON — pushes to `main` go live in ~5 seconds

## Brand Palette (Official Rhinos Colors)

| Token | Hex | Use |
|---|---|---|
| `rhino-orange` | `#F37021` | primary brand, CTAs, accents |
| `rhino-orangeDark` | `#C2541A` | hover state, deeper orange |
| `rhino-ink` | `#0B0B0E` | team black, dark sections |
| `rhino-ink2` | `#17171A` | card surfaces in dark sections |
| `rhino-silver` | `#D4D4D8` | team grey light |
| `rhino-steel` | `#52525B` | team grey mid |
| `rhino-cream` | `#FAFAF9` | off-white page background |

Source: official El Paso Rhinos team colors per Elite Prospects — **Orange, White, Black, Grey**.

## Edit From Your Phone (Claude Dispatch)

This repo is wired so you can edit the site directly from the **Claude app on your phone** using Claude Dispatch / Claude Code mobile.

1. Open the Claude app → start a Dispatch task on `diegogallardodg-prog/rhinos-sponsor-portal`.
2. Tell Claude what to change ("make the CTA buttons bigger", "swap the hero subhead to X", "add a testimonials section").
3. Claude commits to `main`. Netlify auto-deploys every push.
4. Live site updates in ~5 seconds.

## Deploy It (manual, from desktop)

Auto-deploy handles normal edits. For a manual one-shot from your Mac:

```bash
cd ~/Documents/AgentDeploy_Clients/Shea_Sherman/web && ./deploy.sh
```

## What's On the Page

1. **Hero** — "A sponsor portal built for the Rhinos. No more two-hour Word proposals." + admin dashboard mockup
2. **Today / Tomorrow** — three rows naming Shea's exact pain (Proposals / Activations / Reporting)
3. **Tabbed mockup** — "What sponsors see" (Sunflower Bank's branded Rhinos Hub) and "What you see" (admin)
4. **The AI engine** — three documents auto-generated (Branded Proposal / Mid-Season Recap / Season Recap Deck)
5. **30-day rollout plan** — weekly milestones, scoped engagement
6. **Final CTA** — "Monday 10:30 — let's walk through your version."

## Change Log

- 2026-05-15 — Initial build by AgentDeploy TX.
- 2026-05-15 — Color refit: red → official Rhinos orange (`#F37021`) + ink black + grey. Pushed to GitHub for mobile editing via Claude Dispatch.
- 2026-05-15 — Name correction: Herman → Sherman. Local folder also renamed to `Shea_Sherman/`.
- 2026-05-15 — GitHub → Netlify auto-deploy wired. Pushes to `main` deploy in ~5s.

---
Diego Gallardo · diego.gallardo.dg@gmail.com · El Paso, TX
