# c2sm-lunch

Live lunch menu aggregator for locations near ETH Zurich. Deployed via GitHub Pages.

## Locations

| Emoji | Restaurant |
|-------|------------|
| 🍝 | [Hot Pasta](https://hotpasta.ch/) |
| 🇮🇹 | [La Fontana](https://www.fontanafontana.ch/bistro) |
| 🥗 | [Archimedes](https://ethz.ch/de/campus/erleben/gastronomie-und-einkaufen/gastronomie/restaurants-und-cafeterias/zentrum/archimedes.html) |
| 🍚 | [Asienmensa](https://ethz.ch/de/campus/erleben/gastronomie-und-einkaufen/gastronomie/restaurants-und-cafeterias/zentrum/clausiusbar.html) |
| 🍕 | [Culmann](https://edis-culmann.ch) |
| 👔 | [Dozentenfoyer](https://ethz.ch/de/campus/erleben/gastronomie-und-einkaufen/gastronomie/restaurants-und-cafeterias/zentrum/dozentenfoyer.html) |
| 🚠 | [Kleine Freiheit](https://kleinefreiheit.ch/angebot) |

## Deployment

The site deploys automatically to GitHub Pages on every push to `main` via the included GitHub Actions workflow.

**One-time setup** (only needed once per repo):
1. Go to **Settings → Pages** in your GitHub repository.
2. Under *Source*, select **GitHub Actions**.
3. Push to `main` — the workflow will build and publish the site.

> **Note:** Some restaurants (notably ETH Zurich pages) set `X-Frame-Options: SAMEORIGIN`, which prevents iframe embedding. In those cases a direct link is shown below the (blank) iframe as a fallback.
