# download-wl1-cli-action

A GitHub action to download the Wonderland 1 CLI.

## How to use it

1. Provide a valid Wonderland 2 manifest
2. Add a `WONDERLAND_GITHUB_TOKEN` and `BASTION_KEY` to your repository secrets
3. Add this step to your deployment job

```yaml
- name: Install WL1 CLI
  uses: Jimdo/download-wl1-cli-action@main
  with:
    token: ${{ github.token }}
```

## Inputs

### token

**required** A GitHub token to use for download.
