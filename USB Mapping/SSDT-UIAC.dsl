DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC (8086_a36d)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                      },
                      "HS03", Package()
                      {
                          "name", Buffer() { "HS03" },
                          "UsbConnector", 10,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                      },
                      "HS05", Package()
                      {
                          "name", Buffer() { "HS05" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x05, 0x00, 0x00, 0x00 },
                      },
                      "HS06", Package()
                      {
                          "name", Buffer() { "HS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                      },
                      "HS07", Package()
                      {
                          "name", Buffer() { "HS07" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x07, 0x00, 0x00, 0x00 },
                      },
                      "HS08", Package()
                      {
                          "name", Buffer() { "HS08" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                      },
                      "HS11", Package()
                      {
                          "name", Buffer() { "HS11" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                      },
                },
            },
        })
    }
}
