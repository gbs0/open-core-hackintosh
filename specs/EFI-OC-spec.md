#### This page is about the progress of ACPI for Coffe Lake Intel Architecture
> For better understanding of ACPI context: https://eclecticlight.co/2017/08/08/sleep-wake-and-startup-hardware-and-acpi/

> For more depth info about Apple ACPI Platform, please visit: https://dortania.github.io/Getting-Started-With-ACPI/#a-quick-explainer-on-acpi

- [X] Dortania - SDDT-Plug
- [X] SDDT-USBX-DESKTOP
- [X] SSDT-AWAC
- [X] SDDT-PMC

> For this SSDT's requirements I just follow this guide: https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#desktop-coffee-lake

For better NRAM compatibility in this setup, SDDT-PMC is used to enable native NVRAM on "true" 300 series motherboards
ie. B360(which is my case), B365, H310, H370, Z390. Z370 is not included