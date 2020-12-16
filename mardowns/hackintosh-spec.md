> ### This README is about the tools and plugins that I use for build this hackintosh version

### File Structure
 For macOS booting purposes, all the drivers, kernel extensions and hardware mapping are located on `EFI` folder

 Each directory inside `EFI` folder is structured by convention used in Hackintosh Builds.

 > See also:
 > https://dortania.github.io/OpenCore-Install-Guide/config.plist/#creating-your-config-plist

------

### Getting start with ACPI Platform for Coffe Lake Intel Architecture
> For better understanding of ACPI context: https://eclecticlight.co/2017/08/08/sleep-wake-and-startup-hardware-and-acpi/

> For more depth info about Apple ACPI Platform, please visit: https://dortania.github.io/Getting-Started-With-ACPI/#a-quick-explainer-on-acpi

- [X] Dortania - SDDT-Plug
- [X] SDDT-USBX-DESKTOP
- [X] SSDT-AWAC
- [X] SDDT-PMC

> For this SSDT's requirements I just follow this guide: https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#desktop-coffee-lake

For better NRAM compatibility in this setup, SDDT-PMC is used to enable native NVRAM on "true" 300 series motherboards
ie. B360(which is my case), B365, H310, H370, Z390. Z370 is not included

------
### Kext Files (Kernel Extensions)

For this Intel build, I`m using the desktop version **chipset.** 
So, some kext files I just ignored, since them are used only in **non-desktop** versions.

> To see the complete kext files provided by Open-Core guide: https://onedrive.live.com/?authkey=%21APjCyRpzoAKp4xs&id=FE4038DA929BFB23%21455036&cid=FE4038DA929BFB23

**The first Kext plugins for SMC control and macOS Boot:**

- [X] VirtualSMC.kext
> Applied for initialize a Virtual System Management Control for macOS boot.

- [X] SMCProcessor.kext
> Applied for monitoring CPU temperature and functionalities. Doesn't work on AMD CPU based systems

- [X] SMCSuperIO.kext
> Used for monitoring fan speed. Doesn't work on AMD CPU based systems

**Graphics Extensions:**

- [X] Lilu.kext
> Lilu plugin providing patches to select GPUs on macOS. In my case I'm using Radeon 5700XT GPU

- [ ] Whatevergreen.kext
> 

**Audio**
- [X] AppleALC.kext
> Used for AppleHDA patching, allowing support for the majority of on-board sound controllers.

**Ethernet Motherboard Ports**
- [ ] AppleALC.kext