#!/bin/bash
#change this to the interface you wish to change
IFACE="wlan0"

ifconfig $IFACE down
iwconfig $IFACE mode managed
ifconfig $IFACE up
iwconfig $IFACE channel $@
ifconfig $IFACE down
iwconfig $IFACE mode monitor
ifconfig $IFACE up

iwconfig $IFACE