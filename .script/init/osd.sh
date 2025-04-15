#!/bin/bash
rm /tmp/wobpipe
mkfifo /tmp/wobpipe
tail -f /tmp/wobpipe | wob
