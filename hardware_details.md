
#### **CPU INFO**
Coffe Lake 9th Generation Intel Core i5 9400-F

#### **Water Cooler**
Corsair 120ML  

#### **Motherboard/Chipset Model**
Asus B360M TUF GAMING-BR
>     ##### Audio Codec - Motherboard
>            Vendor: Realtek,  
>            Codec: ALC892,
>            Revisions and Layouts:  0x100302, layout 1, 2, 3, 4, 5, 7, 12, 15, 16, 17, 18, 28, 31, 90, 92, 97, 99      
>            Mini Kernel: 13 (10.9)

#### **Keyboard, Trackpad**
Both Apple Magic 2 acessories, Keyboard and Mouse.

#### Audio Codec - Motherboard
`aplay -l`

#### Network Controller models
> Basic information:
`lspci | grep -i 'network'`

> In-Depth information:
`lshw -class network`

#### Drive Model
`lshw -class disk -class storage`