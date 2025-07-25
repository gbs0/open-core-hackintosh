### Hackintosh Guide
#### Tools and Plugins I use to build my own machine.

### Bootloader
To start our journey, we need a external flash storage to build the EFI bootloader directory:
Some specs about the drive:
| Requirement              | Description             |
| -----------              | -----------             |
| **Storage**              | At least 2GB storage    |
| **Partition Format**     | GUID Map Partition      |
| **File System**          | MacOS Expanded          |

### File Structure
 For macOS booting purposes, all the drivers, kernel extensions and hardware mapping are located on `EFI` folder

 Each directory inside `EFI` folder is structured by convention used in Hackintosh Builds.

```
📦EFI
 ┣ 📂 BOOT
   ┗ 📄BOOTx64.efi
 ┣ 📂 OC
   ┣ 📂 ACPI
   ┃ ┣ 📄SSDT-AWAC.aml
   ┃ ┣ 📄SSDT-EC-USBX.aml
   ┃ ┣ 📄SSDT-PLUG.aml
   ┃ ┗ 📄SSDT-PMC.aml
   ┣ 📂 Drivers
   ┣ 📂 Kexts
   ┣ 📂 Resources
   ┣ 📂 Tools 
   ┣ 📄config.plist
   ┗ 📄OpenCore.efi
```

 > See also:
 > https://dortania.github.io/OpenCore-Install-Guide/config.plist/#creating-your-config-plist

------

### Start with SSDT (Secondary System Description Table) for Coffe Lake

For better NRAM compatibility in this setup, SDDT-PMC is used to enable native NVRAM on "true" 300 series motherboards
ie. B360(which is my case), B365, H310, H370, Z390. Z370 is not included

- [X] Dortania - SDDT-Plug
- [X] SDDT-USBX-DESKTOP
- [X] SSDT-AWAC
- [X] SDDT-PMC

> For this SSDT's requirements I just follow this guide: https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#desktop-coffee-lake


> For better understanding of ACPI context: https://eclecticlight.co/2017/08/08/sleep-wake-and-startup-hardware-and-acpi/


> For more depth info about Apple ACPI Platform, please visit: https://dortania.github.io/Getting-Started-With-ACPI/#a-quick-explainer-on-acpi

------
### Kext Files (Kernel Extensions)

For this Intel build, I`m using the desktop version **chipset.** 
So, some kext files I just ignored, since them are used only in **non-desktop** versions.

> To see the complete kext files provided by Open-Core guide: https://onedrive.live.com/?authkey=%21APjCyRpzoAKp4xs&id=FE4038DA929BFB23%21455036&cid=FE4038DA929BFB23

**The first Kext plugins for SMC control and macOS Boot:**

- [X] VirtualSMC.kext:

*Initialize a Virtual System Management Control for macOS boot.*

- [X] SMCProcessor.kext

*Monitoring CPU temperature and functionalities. Doesn't work on AMD CPU based systems*

- [X] SMCSuperIO.kext

*Used for monitoring fan speed. Doesn't work on AMD CPU based systems.*

**Graphics Extensions:**

- [X] Lilu.kext

*Lilu plugin providing patches to select GPUs on macOS. In my case I'm using Radeon 5700XT GPU*

- [X] Whatevergreen.kext

*More GPU drivers and compatibility patches.*

**Audio**

- [X] AppleALC.kext

*Used for AppleHDA patching, allowing support for the majority of on-board sound controllers.*

**Ethernet Motherboard Ports**
- [X] IntelMausi.kext

*Intel's 82578, 82579, i217, i218 and i219 NICs are officially supported (which is my case).*

**Extras:**

- [X] NVMeFix.kext

*Used for fixing power management and initialization on non-Apple NVMe.*

- [X] CtlnaAHCIPort.kext

*Need to be used instead due to numerous controllers being dropped from the  macOS Big Sur binary itself*



