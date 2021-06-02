<!--markdownlint-disable-file MD013-->
# Woomy-overlay

[![Overlay QA](https://github.com/Woomymy/woomy-overlay/actions/workflows/ci.yml/badge.svg)](https://github.com/Woomymy/woomy-overlay/actions/workflows/ci.yml)

> A Gentoo overlay that provides some packages

## Install

To install this overlay, you can use the `app-eselect/eselect-repository` tool.
> NOTE: You can also use layman but this guide will show the procedure for eselect-repository.

**Make sure dev-vcs/git and app-eselect/eselect-repository tools are installed!**

To install the repository you just need to run

```eselect repository add woomy-overlay git https://github.com/woomymy/woomy-overlay.git```

> NOTE: if you use Calculate Linux you can enable updates from other overlays by typing
> ``cl-core-variables --set update.cl_update_other_set=on``

