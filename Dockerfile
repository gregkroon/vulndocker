FROM node:20-slim

WORKDIR /app

# Copy package.json with pinned vulnerable dependency versions.
# These versions correspond to active CVEs collected by zero-day-collector:
#   sanitize-html@1.18.0  → CVE-2026-53606
#   sqlite3@2.1.0         → CVE-2026-54620
#   oauth@0.5.5           → CVE-2026-54605
#   oauth2@0.4.0          → CVE-2026-54603
#   style-dictionary@4.3.0 → CVE-2026-54639
#   nx@23.0.0-beta.0      → CVE-2026-54753
COPY package.json .

RUN npm install --ignore-scripts

CMD ["node", "-e", "console.log('vulnerable test image running')"]
