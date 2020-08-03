# Woomy-overlay
> A Calculate Linux / Gentoo overlay that provides I3 Gaps Profile and some packages 
## Install
To install this overlay, you can use the `app-eselect/eselect-repository` tool.
> NOTE: You can also use layman but this guide will show the procedure for eselect-repository.
**Make sure dev-vcs/git and app-eselect/eselect-repository tools are installed!**

To install the repository you just need to type ```
eselect repository add woomy-overlay git https://github.com/woomy4680-exe/adrien-overlay.git```

After just sync your repositories and all is good! 

> NOTE: if you use calculate Linux you can set updates from other overlays by typing 
```cl-core-variables --set update.cl_update_other_set=on```
