#! /bin/sh

# For NCDC Weather http://www.ncdc.noaa.gov/
# NCDC format
# 0057 
# 332130        # USAF weather station identifier 
# 99999        # WBAN weather station identifier 
# 19500101     # observation date 
# 0300             # observation time 
# 4 
# +51317       # latitude (degrees x 1000) 
# +028783      # longitude (degrees x 1000) 
# FM-12 
# +0171        # elevation (meters) 
# 99999 
# V020 
# 320              # wind direction (degrees) 
# 1                # quality code 
# N 
# 0072 
# 1 
# 00450        # sky ceiling height (meters) 
# 1                # quality code 
# C 
# N 
# 010000       # visibility distance (meters) 
# 1                # quality code 
# N 
# 9 
# -0128        # air temperature (degrees Celsius x 10) 
# 1                # quality code 
# -0139         # dew point temperature (degrees Celsius x 10) 
# 1                # quality code 
# 10268        # atmospheric pressure (hectopascals x 10) 
# 1                # quality code
# ls raw/1990 | head

# find 每年全球气温的最高记录是多少?

for year in all/*
do
  echo -ne `basename $year .gz` "\t"
  gunzip -c $year | \
    awk `{ temp = substr($0,88,5)+0;
          q = substr($0,93,1);
          if ( temp !=9999 && q ~ /[01459]/ && temp >max)
            max=temp } end { print max}`
done


