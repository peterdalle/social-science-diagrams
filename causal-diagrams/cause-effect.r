#
#    IV ---------------> DV
#
library(DiagrammeR)

code <- "
  digraph causal {
	# Nodes
	node [shape = reactangle, fontname = Arial]
	iv [label = 'Independent\nvariable']
	dv  [label = 'Dependent\nvariable']

	# Edges
	edge [color = black, arrowhead = normal]
	rankdir = LR
	iv -> dv

	# Graph
	graph [overlap = true, fontsize = 10]
}"

grViz(code)