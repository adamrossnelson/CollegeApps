// April 9, 2018 - Adam Ross Nelson

// Do file that prepares smaller version of IPEDSDirInfo02to16.dta
// Prepared for use with repo: https://github.com/adamrossnelson/CollegeApps

set more off
clear all
use ../../statadata/IPEDSDirInfo02to16.dta
keep isYr unitid instnm addr city stabbr zip fips webaddr adminurl faidurl applurl locale sector fte enrtot iclevel
keep if isYr == 2016
save ../../statadata/IPEDSDirInfo02to16smlr.dta, replace
