#!/bin/bash
exec makoctl history | grep -E ^Notification | wc -l
