sub convert_distance {
    my ($distance, $unit) = @_;

    if ($unit eq "km") {
        return $distance * 111.12;
    } elsif ($unit eq "miles") {
        return $distance * 69.046766881413;  
    } elsif ($unit eq "nautical miles") {
        return $distance * 60;  
    } else {
        die "Invalid unit. Supported units are 'km', 'miles', and 'nm'.";
    }
}
