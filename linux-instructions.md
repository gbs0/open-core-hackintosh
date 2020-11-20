### Hardware Info w/ Linux
> For see hardware info we should use some tools:
> cat
> pciutils
> dmidecode

#### **CPU INFO**
`cat /proc/cpuinfo | grep 'model name'`

#### **CPU INFO**
`lspci | grep -i --color 'vga\|3d\|2d'`

#### **Chipset Model**
`dmidecode -t baseboard`

#### **Keyboard, Trackpad and Touchscreen Connection Type**
`dmesg |grep -i 'input'`

#### Audio Codec
`aplay -l`

#### Network Controller models
> Basic information:
`lspci | grep -i 'network'`

> In-Depth information:
`lshw -class network`

#### Drive Model
`lshw -class disk -class storage`