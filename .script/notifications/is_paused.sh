#!/bin/bash
exec test `dunstctl is-paused` == 'true'
