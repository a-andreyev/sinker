#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pyotherside
import threading

from libpebble2.communication import PebbleConnection
from libpebble2.communication.transports.serial import SerialTransport

def get_serial_function():
    pyotherside.send('progress', 1/6)
    pebble = PebbleConnection(SerialTransport("/dev/rfcomm0")) #FIXME: hardcoded
    pyotherside.send('progress', 2/6)
    pebble.connect()
    pyotherside.send('progress', 3/6)
    pebble.run_async()
    pyotherside.send('progress', 4/6)
    serial_number = pebble.watch_info.serial
    pyotherside.send('progress', 5/6)
    pyotherside.send('finished', serial_number)
    pyotherside.send('progress', 6/6)
class PebbleMobileApp:
    def __init__(self):
        # Set bgthread to a finished thread so we never
        # have to check if it is None.
        self.bgthread = threading.Thread()
        self.bgthread.start()

    def get_serial(self):
        if self.bgthread.is_alive():
            return
        self.bgthread = threading.Thread(target=get_serial_function)
        self.bgthread.start()


pebble_mobile_app = PebbleMobileApp()
