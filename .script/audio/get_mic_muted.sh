#!/bin/bash
exec test `pamixer --default-source --get-mute` = 'true'
