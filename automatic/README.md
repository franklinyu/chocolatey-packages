## Automatic Folder

This is where you put your Chocolatey packages that are automatically packaged up by [AU](https://chocolatey.org/packages/au).

### Automatic Updater (AU)

AU works with packages without automatic package tokens necessary. So you can treat the packages as normal.

Execute `update_all.ps1` in the repository root to run [AU](https://chocolatey.org/packages/au) updater with default options. 

To fully setup all the features ensure you perform the steps in the [setup/README.md](https://github.com/chocolatey/chocolatey-packages-template/blob/master/setup/README.md#automatic-updater-au)

To get the packages that implement AU updater run `Get-AUPackages` or `lsau` in this directory.

**NOTE:** Ensure when you are creating packages for AU, you don't use `--auto` as the packaging files should be normal packages. AU doesn't need the tokens to do replacement.

Packages:
  - [`cfr`](https://chocolatey.org/packages/cfr)
  - [`Charles`](https://chocolatey.org/packages/Charles)
  - [`classyshark`](https://chocolatey.org/packages/classyshark)
  - [`jadx`](https://chocolatey.org/packages/jadx)
  - [`keystore-explorer.portable`](https://chocolatey.org/packages/keystore-explorer.portable)
  - [`thumbs-viewer`](https://chocolatey.org/packages/thumbs-viewer)
  - [`tomcat`](https://chocolatey.org/packages/tomcat)
  - [`typora`](https://chocolatey.org/packages/typora)
