#!/usr/bin/env bash
# Deploy this folder to the rhinos-sponsor-portal Netlify site.
# Run from this folder: ./deploy.sh
set -euo pipefail

SITE_ID="8c373e91-f31f-49ae-bf5b-b0950e678d53"
cd "$(dirname "$0")"

# --- OG image fetch (only if missing) ---
OG_OPT1_URL="https://v3b.fal.media/files/b/0a9a5f45/XHZ2T4rO_mdD_4pwU_inn_0ced7b6fe5704cbc84259fa773110bf1.jpg"
OG_OPT2_URL="https://v3b.fal.media/files/b/0a9a5f45/6MIiIwZ-rKIME1YoHTRrg_2ef63f9a804543ae90983facb8e69a75.jpg"

mkdir -p images
if [ ! -f "images/og.jpg" ]; then
  echo "→ Fetching OG image (option 1, default)..."
  curl -sSL "$OG_OPT1_URL" -o images/og.jpg
  echo "→ Fetching alternate OG (option 2) as images/og-alt.jpg..."
  curl -sSL "$OG_OPT2_URL" -o images/og-alt.jpg
  echo "  (to swap to alternate: 'cp images/og-alt.jpg images/og.jpg' then re-run this script)"
else
  echo "✓ images/og.jpg already exists — using it as-is"
fi

# --- Deploy ---
if ! command -v netlify >/dev/null 2>&1; then
  echo "❌ netlify CLI not found. Installing globally..."
  npm install -g netlify-cli
fi

echo "→ Deploying to rhinos-sponsor-portal.netlify.app (site $SITE_ID)..."
netlify deploy --prod --dir=. --site="$SITE_ID"

echo ""
echo "✅ Live at: https://rhinos-sponsor-portal.netlify.app"
echo "   Admin:   https://app.netlify.com/projects/rhinos-sponsor-portal"
