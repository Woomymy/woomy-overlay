<!--markdownlint-disable-file MD013-->
# Woomy-overlay

[![Overlay QA](https://github.com/Woomymy/woomy-overlay/actions/workflows/ci.yml/badge.svg)](https://github.com/Woomymy/woomy-overlay/actions/workflows/ci.yml)

> A Gentoo overlay that provides some packages

## Install

To install this overlay, you can use the `app-eselect/eselect-repository` tool.
> *NOTE: You can also use layman*

**Make sure dev-vcs/git and app-eselect/eselect-repository tools are installed!**

To install the repository you just need to run

``eselect repository add woomy-overlay git https://github.com/woomymy/woomy-overlay.git``

## Overlay Verification

You can enable commit signatures verification using `gpg` by adding these line to repos.conf (in the woomy-overlay section)

```
sync-git-verify-commit-signature = yes
sync-openpgp-key-path = /usr/share/openpgp-keys/woomymy.gpg
```

**Before enabling verification, be sure to emerge the `sec-keys/openpgp-keys-woomy` package in this overlay**

