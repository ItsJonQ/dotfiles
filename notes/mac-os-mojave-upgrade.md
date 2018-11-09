---
title: "Mac OS Mojave Upgrade Notes"
date: 2018-11-08
---

## HDMI Patch

Patching HDMI connections to force RGB mode is still necessary (for certain monitors)

## Brew

`brew install` results in the following error:

```
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun.
```

To resolve this, reinstall `xcode-select` by running:

```
xcode-select --install
```

According to [Stack Overflow](https://apple.stackexchange.com/questions/254380/macos-mojave-invalid-active-developer-path), you can also run:

```
xcode-select --switch /Applications/Xcode.app
xcode-select --switch /Library/Developer/CommandLineTools
```

If it's still not working, try:

```
xcode-select --reset
```
