#!/bin/bash

rm -rf src/*.cov
julia --code-coverage=user --inline=no ./test/runtests.jl && julia report-coverage.jl
