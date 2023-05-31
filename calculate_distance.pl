sub calculate_distance {
    my ($lat1, $lon1, $lat2, $lon2) = @_;
    my $lat1_rad = $lat1 * pi / 180;
    my $lon1_rad = $lon1 * pi / 180;
    my $lat2_rad = $lat2 * pi / 180;
    my $lon2_rad = $lon2 * pi / 180;
    my $dlat = $lat2 - $lat1;
    my $dlon = $lon2 - $lon1;
    my $a = sin($dlat / 2) ** 2 + cos($lat1_rad) * cos($lat2_rad) * sin($dlon / 2) ** 2;
    my distance = 2 * atan2(sqrt($a), sqrt(1 - $a));
    return $distance;
}
