# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A static single-page personal profile website for Yecheng (Geoffrey) Wang, deployed on GitHub Pages at `yecheng-wang.com` (custom domain via Cloudflare). No build step, no dependencies to install.

## Deploying changes

```bash
git add index.html && git commit -m "description" && git push
```

GitHub Pages auto-deploys on push, takes 1-2 minutes to go live. Never commit `BuggyChamp.MOV` or other large video files (>100MB GitHub limit) — these are in `.gitignore`.

## Architecture

Everything lives in `index.html`. `style.css` is intentionally empty — all styles are in the `<style>` block inside `<head>` plus Tailwind utility classes.

**External CDN dependencies (no local install):**
- Tailwind CSS (`cdn.tailwindcss.com`)
- Font Awesome 6.5.1
- ClustrMaps globe widget (visitor map)

**Key CSS classes in `<style>` block:**
- `.ios-card` — white card with layered shadow, subtle hover lift. Used for all content sections.
- `.section-title` — section heading style (replaces `border-l-4` approach)
- `.profile-ring` — gradient ring around profile photo (blue→purple→cyan)

**Page section order:** header (photo + contacts + bio + skills) → Honors & Awards → Publications → Internships → News → Selected Experience & Projects → Visitor Footprint → footer

**Header layout:** Two-column flex (`md:flex-row`). Left col: photo with gradient ring + 6-row contact buttons. Right col: name, schools, graduation, bio, skills tags.

**Background:** Fixed gradient (`background-attachment: fixed`) with blue/purple radial lights on `#eef2f8` base — creates depth without glassmorphism needing dark backgrounds.

## Assets

- `assets/profile.jpg` — profile photo
- `assets/leeds-logo.png`, `assets/swjtu-logo.png` — university logos in header
- `assets/Yecheng WANG CV Feb.pdf` — CV
- `assets/Team_4_Poster.pdf` — Colonoscopy Robotic Arm poster (MECH2636 A3)
- `assets/Buggy 2 poster group 30.pdf` — Autonomous Buggy poster (MECH2636 A2)

Large video files (BuggyChamp.MOV) are hosted on Google Drive, not in this repo.

## Design decisions

- **No bold on skill/technique keywords in bio** — only `<strong>` on field-level terms (Embodied AI, Surgical Robotics) to avoid keyword-dump feel
- **Slogan on its own line** — `Making the most advanced technology affordable and accessible.` is a standalone bold paragraph, not part of the bio
- **News section** placed after Internships (not at top) — only one entry currently; move up when more accumulate
- **Skills tags inside header right column** — responsive with `justify-center md:justify-start`
- **Contact buttons** — Edu+CV paired, Gmail solo, GitHub solo, LinkedIn solo, X+Ins paired (6 rows total)

## Pending / Future work

- [ ] **Research Vision section** — Geoffrey to draft; should answer: what problem, why existing approaches fall short, his specific angle. 2-3 sentences, distinct from the header bio.
- [ ] **GitHub code links** — upload Buggy C++ / Colonoscopy MATLAB / Helicopter Arduino code to GitHub repos, then add Code buttons to each project card
- [ ] **CUHK internship** — add to Internships section after Jun 2026 with full description
- [ ] **CapsuleWorldModel paper** — add to Publications + News when submitted/accepted
- [ ] **CV update** — filename is `Yecheng WANG CV Feb.pdf`; update file and filename when CV is refreshed
- [ ] **Footer date** — currently `May 2026`; update periodically
- [ ] **Mobile layout** — basic responsive fixes done; further polish if needed after real device testing
