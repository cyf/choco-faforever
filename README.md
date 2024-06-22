﻿# choco-faforever

[Quick start guide](https://docs.chocolatey.org/en-us/create/create-packages-quick-start/#quick-start-guide)

```powershell
choco install faforever --version="0.0.1-rc23" --prerelease --source .
```

```powershell
choco apikey --api-key [API_KEY_HERE] -source https://push.chocolatey.org/

choco push faforever.0.0.1-rc23.nupkg --source https://push.chocolatey.org/
```
