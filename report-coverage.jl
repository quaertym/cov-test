Pkg.installed("Coverage") == nothing && Pkg.add("Coverage")

using Coverage
coverage = process_folder()
covered_lines, total_lines = get_summary(coverage)
print("coverage: $(covered_lines/total_lines)\n")
