#!/bin/sh

socat -dd TCP-L:${OUT},fork TCP:${IN}