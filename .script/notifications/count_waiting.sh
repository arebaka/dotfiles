#!/bin/bash
exec makoctl list | grep -E ^Notification | wc -l
