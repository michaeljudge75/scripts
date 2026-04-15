#!/bin/bash

read -p "Enter File Name to Search For: " filename
find / -name "$filename" 2>/dev/null
