#!/bin/bash

pactl set-sink-volume $(pactl list sinks short | awk -F ' ' '{print $1}') +2%
