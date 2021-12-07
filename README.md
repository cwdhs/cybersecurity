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
| [`docs/cis`](./docs/cis) | [Center for Internet Security](https://www.cisecurity.org/cis-benchmarks) | A collection of CIS benchmarks |
| [`release`](./release) | | Not sure what to run? Just run the file for your operating system in here |
| [`linux/cis/debian`](./linux/cis/debian) | [OVH](https://github.com/ovh/debian-cis) | CIS-compliant script for Debian 8 to 10 |
| [`linux/cis/debian9`](./linux/cis/debian9) | [florianutz](https://github.com/florianutz/Debian9-CIS) | CIS-compliant script for Debian 9 |
| `linux/cis/[`[`ubu16`](./linux/cis/ubu16)`, `[`ubu18`](./linux/cis/ubu18)`, `[`ubu20`](./linux/cis/ubu20)`]` | [florianutz](https://github.com/florianutz) | CIS-compliant scripts for Ubuntu 16 to 20 |
| `[`[`linux`](./linux/diff)`, `[`windows`](./windows/diff)`]/diff` | [Matteo Polak](https://github.com/matteopolak) | Returns a list of all files that are not present in a vanilla installation of an operating system |
| `[`[`linux`](./linux/files)`, `[`windows`](./windows/files)`]/files` | [Matteo Polak](https://github.com/matteopolak) | Finds suspiscious file extensions and writes them to a file |
| [`windows/cis`](./windows/cis) | [NVISO Security](https://github.com/NVISOsecurity/posh-dsc-windows-hardening) | CIS-compliant scripts for Windows 10 and Windows Server 2016 to 2019 |
| [`windows/security`](./windows/security) | | A collection of scripts to audit permissions and other content |
| [`linux/security`](./linux/security) | | A collection of scripts to audit permissions and other content |

### Other content
| Operating System | Link | Description |
| --- | :-- | :-- |
| Windows 10 | https://github.com/0x6d69636b/windows_hardening | Windows 10 hardening script written in PowerShell |
| Windows | https://github.com/CISecurity/TOOLKIT | Hardening scripts for older versions of Windows-based operating systems |
| Windows | https://github.com/Sneakysecdoggo/Wynis | Hardening scripts for Office365 and system auditing |
| Windows Server 2016 | https://github.com/MightyCrizo/cis-microsoft-windows-server-2016-benchmark-powershell | Hardening scripts for Windows Server 2016 |
| Ubuntu 20.04 | https://github.com/alivx/CIS-Ubuntu-20.04-Ansible | Hardening script made with Ansible (_not complete_) |
| Ubuntu 18.04 | https://github.com/cloudogu/CIS-Ubuntu-18.04 | Hardening script for Ubuntu 18.04 |
| Ubuntu 18.04 and 20.04 | https://github.com/kenneth-karlsson/Cisecurity | Hardening scripts for Ubuntu 18.04 and Ubuntu 20.04 |
| Ubuntu 16.04 | https://github.com/radsec/Ubuntu1604-CIS | Hardening scripts for Ubuntu 16.04 |
| Debian 10 | https://github.com/dbernaci/CIS-Debian10-Ansible | Hardening script written in Ansible for Debian 10 |
| Debian 7 and 9 | https://github.com/tuxtter/hardening | Hardening script for Debian 7 and Debian 9 |
| Linux | https://github.com/nozaq/amazon-linux-cis | Hardening script for Amazon Linux |