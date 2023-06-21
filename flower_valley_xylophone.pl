#!/usr/bin/perl
# File: SustainableSociety.pl
# Author: Tom Jones

# This program outlines the various ways to create a sustainable
# society.

# Define global constants
use constant ENERGY_SOURCE => 'renewable';
use constant POWER_SOURCE => 'solar';

# Import necessary modules
use strict;
use warnings;
use Getopt::Std;

# Declare global variables
my @energy_sources;
my @power_sources;
my %options;

# Process command line arguments
getopts('es:p:', \%options);

# Set energy sources and power sources
if ($options{e}) {
	@energy_sources = ENERGY_SOURCE;
} 

if ($options{s}) {
	@energy_sources = split(',', $options{s});
}

if ($options{p}) {
	@power_sources = split(',', $options{p});
}

# Determine most sustainable energy source
my $sustain_energy_source = most_sustain_energy_source(\@energy_sources);

# Determine most sustainable power source
my $sustain_power_source = most_sustain_power_source(\@power_sources);

# Create a sustainable society
my $sustainable_society = create_sustain_society($sustain_energy_source, $sustain_power_source);

print "Sustainable Society Successfully Created\n";

# Subroutine to determine most sustainable energy source
sub most_sustain_energy_source {
	my @energy_sources = @_;

	# Determine most sustainable energy source
	my $sustain_energy_source;
	foreach my $energy_source (@energy_sources) {
		if ($energy_source eq 'renewable') {
			$sustain_energy_source = $energy_source; 
			last;
		}
	}

	return $sustain_energy_source;
}

# Subroutine to determine most sustainable power source
sub most_sustain_power_source {
	my @power_sources = @_;

	# Determine most sustainable power source
	my $sustain_power_source;
	foreach my $power_source (@power_sources) {
		if ($power_source eq 'solar') {
			$sustain_power_source = $power_source;
			last;
		}
	}

	return $sustain_power_source;
}

# Subroutine to create a sustainable society
sub create_sustain_society {
	my $energy_source = shift;
	my $power_source = shift;

	# Create the sustainable society
	my $sustainable_society;
	if ($energy_source eq 'renewable' and $power_source eq 'solar') {
		$sustainable_society = "Create energy efficient practices in households, businesses, and industry. Implement renewable energy systems such as wind power and solar power. Encourage the use of electric cars and other green transportation. Implement strict recycling and composting policies. Use sustainable materials for construction. ";
	}

	return $sustainable_society;
}