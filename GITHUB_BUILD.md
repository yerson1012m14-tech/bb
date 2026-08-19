# JASONXIT — GitHub Actions build

1. Upload this whole folder to a GitHub repository.
2. Open **Actions** → **Build JASONXIT iOS**.
3. Press **Run workflow**.
4. When it finishes, open the workflow run and download **JASONXIT-iOS-build**.
5. The artifact contains `JASONXIT-unsigned.ipa`, the `.xcarchive`, and the Xcode build log.

This workflow builds an **unsigned** IPA. Installing it on a normal iPhone still requires signing with a valid Apple development/ad-hoc certificate and provisioning profile.

The demo Key in the current source is:

`JX-DEMO-2026`
