# choco-faforever

[![Publish](https://github.com/cyf/choco-faforever/actions/workflows/publish.yml/badge.svg)](https://github.com/cyf/choco-faforever/actions/workflows/publish.yml)
[![Chocolatey Version](https://img.shields.io/chocolatey/v/faforever)](https://community.chocolatey.org/packages/faforever)

[Quick start guide](https://docs.chocolatey.org/en-us/create/create-packages-quick-start/#quick-start-guide)

```powershell
choco install faforever --version="1.0.0-rc24" --prerelease --source .
```

```powershell
choco apikey --api-key [API_KEY_HERE] -source https://push.chocolatey.org/

choco push faforever.1.0.0-rc24.nupkg --source https://push.chocolatey.org/
```
