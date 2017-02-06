#!/bin/bash

rm -rf src/*.cov
cd ./test && julia --code-coverage=user --inline=no runtests.jl
cd ../ && julia report-coverage.jl
