#!/bin/bash

# Reset buttons so out of range errors won't occur
synclient RightButtonAreaTop=0 RightButtonAreaBottom=0 RightButtonAreaRight=0 RightButtonAreaLeft=0

synclient MiddleButtonAreaTop=0 MiddleButtonAreaBottom=0 MiddleButtonAreaRight=0 MiddleButtonAreaLeft=0
synclient RightButtonAreaLeft=3591 RightButtonAreaRight=0 RightButtonAreaTop=4104 RightButtonAreaBottom=0

ID=`xinput | grep TouchPad | sed 's/.*id=\([0-9]\+\).*/\1/'`

xinput set-prop $ID "Device Accel Constant Deceleration" 2.5
