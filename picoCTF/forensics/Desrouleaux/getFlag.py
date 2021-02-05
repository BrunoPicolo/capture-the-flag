#!/usr/bin/env python3

import json

jsonFileName = "incidents.json"

# read file
with open(jsonFileName, 'r') as jsonFile:
  data=jsonFile.read()

# parse file
json_obj = json.loads(data)

def getMostCommonSrcIp(json_obj):
  src_ip_addrs = dict()
  for obj in json_obj["tickets"]:
    ip = obj["src_ip"]
    if ip in src_ip_addrs: 
      src_ip_addrs[ip] += 1 
    else:
      src_ip_addrs[ip] = 1 
  sort_ip_addr = sorted(src_ip_addrs.items(), key=lambda x: x[1],
    reverse=True)
  return sort_ip_addr[0][0]

def getNbUnicDestinationIPAddrOfSourceIP(json_obj):
  dst_ip_addrs = set()
  src_ip = input("Set a source IP addr:")
  for obj in json_obj["tickets"]:
    if obj["src_ip"] == src_ip:
      dst_ip_addrs.add(obj["dst_ip"])
  return len(dst_ip_addrs)

def getAverageDestIPForFile(json_obj):
  dst_ip_addrs = dict()
  for obj in json_obj["tickets"]:
    file_hash = obj["file_hash"]
    if file_hash in dst_ip_addrs:
      dst_ip_addrs[file_hash] += 1 
    else:
      dst_ip_addrs[file_hash] = 1 
  return sum(dst_ip_addrs.values()) / len(dst_ip_addrs)

print(getMostCommonSrcIp(json_obj))
print(getNbUnicDestinationIPAddrOfSourceIP(json_obj))
print(getAverageDestIPForFile(json_obj))
