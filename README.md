# IPA → IPSW Converter Example

GitHub Pages + Codespaces-ready static demo for `iPhone1,1_3.0_7A341_Restore.ipsw`.

## Run locally

```bash
python3 -m http.server 8080
```

Open `http://localhost:8080`.

## GitHub Pages

Upload the contents to a repository and enable **Settings → Pages → Deploy from a branch**. No build step is required.

## Codespaces

Open the repository in Codespaces and run the same `python3 -m http.server 8080` command, then forward port 8080.

## Technical scope

IPA and IPSW files use ZIP containers, but an IPA is an application package and a genuine Apple restore IPSW contains device firmware and restore metadata subject to Apple's signing/restore requirements. This example deliberately demonstrates client-side ZIP repackaging only; it does not claim to create a flashable Apple firmware image.

JSZip is bundled locally so the site does not depend on a CDN at runtime.

The ZIP also includes a small binary placeholder fixture so the downloadable example is approximately 900 KB as requested; it is not firmware and is not used by the app.
