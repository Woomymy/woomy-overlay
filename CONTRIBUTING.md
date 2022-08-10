# Contributing

All contributions are welcome but some there is also some rules

## Commit rules

The commits must follow the `package: Action` syntax. If you want help to automaticaly generate the template, copy the .githooks/prepare-commit-msg file to .git/hooks

## Adding new package

If you want to add a new package, you just need to create an ebuild. All kinds of packages are accepted except:

- Malicious packages
- Useless packages (hello worlds in bash,...)
- Packages with `SRC_URI` from unofficial source

The package must pass the CI (`repoman -dx full`) and passing `pkgcheck scan /path/to/overlay/root/` is a good thing.

After, just create a PR and if your package meets requirements, the PR will be merged.

Thanks !

