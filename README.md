# sinker
[libpebble2](https://github.com/pebble/libpebble2)-based [SailfishOS](https://sailfishos.org/) mobile app for [Pebble Smartwatch](https://www.pebble.com/).
## Deployment
Tested with:
+ python3,
+ libpebble2-0.0.9,
+ SailfishOS 1.1.9.28 (Eineheminlampi) (armv7hl) Jolla smartphone
+ Pebble Time (snowy22, firmware v3.4) smartwatch

1. Connect to your Jolla device via ssh and switch to root with `devel-su`:

2. Install `libpebble2` for python (pyserial, websocket-client, enum34, libpebble2, six, 2to3):

  `pip install libpebble2`

3. fing your Pebble Smartwatch Bluetooth Address (with `rfcomm` or from the watch menu)

4. save rfcomm bluetooth configuration in `/etc/bluetooth/rfcomm.conf` and replace the `00:00:00:00:00:00` with the actual Pebble BT Address:
  ```
  rfcomm0 {
      bind yes;
      device 00:00:00:00:00:00;
      channel 1;
      comment "My Amazing Pebble";
  }
  ```

5. pair your Pebble and Jolla devices (you will be asked for confirmation on both devices from the GUI):

  `rfcomm connect 0`

Right now you've established the connection with the `/dev/rfcomm0` binding and can test the application.

If you press `Ctrl+C` connection will be closed.
