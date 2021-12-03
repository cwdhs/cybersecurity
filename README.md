# CWDHS cybersecurity tools
A collection of tools and documentation to help with hardening Windows- and Linux-based operating systems.

### Supported platforms
* Windows 10
* Windows Server 2019
* Windows Server 2016
* Ubuntu 20
* Ubuntu 18
* Ubuntu 16
* Debian 10
* Debian 9
* Debian 8

### Folders
`[one, two]` is a pattern that includes both `one` and `two` folders for the remaining content.
For example, `hello/[one, two]/three` can be expanded to `hello/one/three` and `hello/two/three`.

| Folder | Source | Description |
| :-- | :-- | :-- |
| `docs/cis` | [Center for Internet Security](https://www.cisecurity.org/cis-benchmarks) | A collection of CIS benchmarks |
| `linux/cis/debian` | [OVH](https://github.com/ovh/debian-cis) | CIS-compliant script for Debian 8 to 10 |
| `linux/cis/[ubu16, ubu18, ubu20] | [florianutz](https://github.com/florianutz) | CIS-compliant scripts for Ubuntu 16 to 20 |
| `[linux, windows]/diff` | [Matteo Polak](https://github.com/matteopolak) | Returns a list of all files that are not present in a vanilla installation of an operating system |
| `[linux, windows]/find` | [Matteo Polak](https://github.com/matteopolak) | Finds suspiscious file extensions and writes them to a file |
| `windows/cis` | [NVISO Security](https://github.com/NVISOsecurity/posh-dsc-windows-hardening) | CIS-compliant scripts for Windows 10 and Windows Server 2016 to 2019 |