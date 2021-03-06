#!/bin/sh

# This script gets the SPICE kernels and puts them in a directory called kernels.
# Run it from the dert project directory.

# Edit dert.properties to add or remove kernel files.

mkdir kernels

# Gravitational constant x mass (GM) values
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/pck/gm_de431.tpc > kernels/gm_de431.tpc

# Generic orientation data
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/pck/pck00010.tpc > kernels/pck00010.tpc

# Leapseconds kernel
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/lsk/naif0011.tls > kernels/naif0011.tls

# Generic Planet Ephemeris
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de430.bsp > kernels/de430.bsp

# Update to de430 for New Horizons
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de432s.bsp > kernels/de432s.bsp

# Mars Planet Ephemeris
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/satellites/mar097.bsp > kernels/mar097.bsp

# Pluto Planet Ephemeris
curl http://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/satellites/plu055.bsp > kernels/plu055.bsp
