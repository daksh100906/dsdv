#!/usr/bin/env bash
# Run this from the OMNeT++/INET environment after the simulation.
# It converts scalar/vector results to a CSV file for lab evaluation.

set -e
mkdir -p results
opp_scavetool export \
  -F CSV-R \
  -o results/dsdv_ping_results.csv \
  -f 'module(**.node[0].app[0])' \
  results/*.sca results/*.vec

echo "Created results/dsdv_ping_results.csv"
echo "Routing-table changes are available in results/*.rt"
