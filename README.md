# c2sm-lunch

Live lunch menu aggregator for locations near ETH Zurich, with real-time lunch polling. Deployed via GitHub Pages.

## Development

Serve the site locally:

```sh
./serve.sh
```

This starts a static file server (Python or `npx serve`) at `http://localhost:8080`.

## Polling backend

Votes are stored in Supabase (see [supabase/schema.sql](supabase/schema.sql)) and synced in real time to all open pages.

## Deployment

The site deploys automatically to GitHub Pages on every push to `main` via the included GitHub Actions workflow.

## License

Licensed under the [MIT License](LICENSE).
