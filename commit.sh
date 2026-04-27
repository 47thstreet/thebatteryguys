#!/bin/bash
cd /home/tbp-3500tb/the-battery-guys

# Run the cross-links Python script
python3 do-fixes.py 2>/dev/null || true

# Clean up all temp scripts
rm -f do-fixes.py fix.py seo-fix.sh apply-seo-fixes.py run-fixes.sh commit.sh

# Stage everything and commit
git add -A
git commit -m "SEO audit: titles, meta, schema, internal links, canonical, OG tags"
git push origin master:main
