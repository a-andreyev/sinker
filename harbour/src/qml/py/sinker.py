#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pyotherside
import threading

from libpebble2.communication import PebbleConnection
from libpebble2.communication.transports.serial import SerialTransport

def get_serial_function():
    serial_number = pebble.watch_info.serial
    pyotherside.send('serial_number', serial_number)


class Sinker:
    def __init__(self):
        # Set bgthread to a finished thread so we never
        # have to check if it is None.
        self.bgthread = threading.Thread()
        self.bgthread.start()

        self.pebble = PebbleConnection(SerialTransport("/dev/rfcomm0"))  # FIXME: hardcoded
        self.pebble.connect()
        self.pebble.run_async()

    def get_serial(self):
        if self.bgthread.is_alive():
            return
        self.bgthread = threading.Thread(target=get_serial_function)
        self.bgthread.start()

sinker = Sinker()
