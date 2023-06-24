package com.example.sustainablesociety

import kotlin.math.round

fun main(args: Array<String>) {
    //example of printing to the console
    println("Welcome to the Sustainable Society!\n")
    println("This society is committed to protecting the planet and living in harmony with nature.\n")

    //Calculate carbon emissions
    println("Calculating Carbon Emissions\n")
    val carbonEmissions = 10.5
    println("Emissions: $carbonEmissions tonnes/person/year\n")

    //Calculate energy use
    println("Calculating Energy Use\n")
    val energyUse = 445
    println("Energy Use: $energyUse kWh/person/year\n")

    //Calculate water usage
    println("Calculating Water Usage\n")
    val waterUsage = 13.5
    println("Water Usage: $waterUsage cubic meters/person/year\n")

    //Calculate waste produced
    println("Calculating Waste Produced\n")
    val wasteProduced = 0.5
    println("Waste Produced: $wasteProduced tonnes/person/year\n")

    //Calculate transport emissions
    println("Calculating Transport Emissions\n")
    val transportEmissions = 3.5
    println("Transport Emissions: $transportEmissions tonnes/person/year\n")

    //Calculate housing emissions
    println("Calculating Housing Emissions\n")
    val housingEmissions = 4.3
    println("Housing Emissions: $housingEmissions tonnes/person/year\n")

    //Calculate total emissions
    println("Calculating Total Emissions\n")
    val totalEmissions = carbonEmissions + energyUse + waterUsage + wasteProduced + transportEmissions + housingEmissions
    println("Total Emissions: $totalEmissions tonnes/person/year\n")

    //Calculate percentage reduction from baseline
    println("Calculating Percentage Reduction from Baseline\n")
    val baselineEmissions = 15.3
    println("Baseline Emissions: $baselineEmissions tonnes/person/year\n")
    val percentageReduction = round(((baselineEmissions - totalEmissions) / baselineEmissions) * 100)
    println("Percentage Reduction: $percentageReduction%\n")

    //Calculate cumulative savings
    println("Calculating Cumulative Savings\n")
    val cumulativeSavings = round(baselineEmissions - totalEmissions)
    println("Cumulative Savings: $cumulativeSavings tonnes/person/year\n")

    println("By living in the Sustainable Society, you are reducing your environmental impact and contributing to a healthier, more sustainable planet. Thank you for doing your part!\n")

}