#!/usr/bin/env python3

from datetime import datetime
print("Pls enter unix time")
unix_time = input()

ts = int(unix_time)

print(datetime.utcfromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%s'))
