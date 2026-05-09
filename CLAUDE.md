# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A static single-page personal profile website for Yecheng (Geoffrey) Wang. No build step, no dependencies to install, no framework beyond CDN-loaded libraries.

## Viewing locally

Open `index.html` directly in a browser, or serve it with any static server:

```bash
python3 -m http.server 8080
```

## Architecture

Everything lives in `index.html`. `style.css` is intentionally empty — all styles are either Tailwind utility classes or the small `<style>` block inside `<head>`.

**External CDN dependencies (no local install):**
- Tailwind CSS (via `cdn.tailwindcss.com` script tag)
- Font Awesome 6.5.1 (icons)
- ClustrMaps globe widget (visitor map at the bottom)

**Key design pattern — `.ios-card`:** The custom glassmorphism card class defined in the `<style>` block. All content sections use it. It provides `backdrop-filter: blur`, soft borders, and a subtle lift-on-hover transform.

**Layout:** Single centered column (`max-w-3xl mx-auto`) with these sections in order: header (bio), contact links, Publications, Internships, Selected Experience & Projects, Visitor Footprint, footer.

## Assets

- `assets/profile.jpg` — profile photo
- `assets/leeds-logo.png`, `assets/swjtu-logo.png` — university logos used inline in the header
- `assets/Yecheng WANG CV Feb.pdf` — CV linked from the contact bar
