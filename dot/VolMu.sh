#!/bin/bash

pactl set-sink-mute $(pactl list sinks short | awk -F ' ' '{print $1}') toggle
