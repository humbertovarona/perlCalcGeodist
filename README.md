# perlCalcGeodist

Compute the distance between two geographic points (perl code)

# Version

![](https://img.shields.io/badge/Version%3A-1.0-success)

# Release date

![](https://img.shields.io/badge/Release%20date-May%2C%2030%2C%202023-9cf)

# License

![](https://img.shields.io/github/license/Ileriayo/markdown-badges?style=for-the-badge)

# Programming language

<img src="https://img.icons8.com/?size=512&id=55311&format=png" width="50"/>

# OS

<img src="https://img.icons8.com/?size=512&id=17842&format=png" width="50"/> <img src="https://img.icons8.com/?size=512&id=122959&format=png" width="50"/> <img src="https://img.icons8.com/?size=512&id=108792&format=png" width="50"/>

# Requirements

```perl
use strict;
use warnings;
use Math::Trig;
```

# Function list

1. **calculate_distance** Computes the distance between two points on the Earth's surface using the Haversine formula.

> Arguments:
> 
>> `lat1`: Latitude of the first point in degrees
>> 
>> `lon1`: Longitude of the first point in degrees
>> 
>> `lat2`: Latitude of the second point in degrees
>> 
>> `lon2`: Longitude of the second point in degrees
>
> Returns: `distance` Distance between the two points in degrees

2. **convert_distance** Converts the distance to the specified unit

> Arguments:
>
>> `distance`: Distance to convert
>> 
>> `unit`: Unit of measurement to convert to ("km", "miles", or "nm")
>
> Returns: Converted distance

# Usage example

```perl
print "Enter the latitude of the first point: ";
my $lat1 = <STDIN>;
chomp($lat1);
print "Enter the longitude of the first point: ";
my $lon1 = <STDIN>;
chomp($lon1);
print "Enter the latitude of the second point: ";
my $lat2 = <STDIN>;
chomp($lat2);
print "Enter the longitude of the second point: ";
my $lon2 = <STDIN>;
chomp($lon2);

my $distance = calculate_distance($lat1, $lon1, $lat2, $lon2);

print "Enter the unit to convert to (km, miles, nautical miles): ";
my $unit = <STDIN>;
chomp($unit);
my $converted_distance = convert_distance($distance, $unit);

# Print the result on screen
printf "The distance between the two points is approximately %.2f %s.\n", $converted_distance, $unit;
```
