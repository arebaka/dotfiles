#!/bin/bash
exec test `pamixer --get-mute` = 'true'
