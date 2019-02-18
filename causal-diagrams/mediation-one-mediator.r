#
#       /----> ME1 --->\
#      /                \
#    IV ---------------> DV
#
library(DiagrammeR)

code <- "
  digraph causal {
	# Nodes
	node [shape = reactangle, fontname = Arial]
	iv [label = 'Independent\nvariable']
	me [label = 'Mediator']
	dv [label = 'Dependent\nvariable']

	# Edges
	edge [color = black, arrowhead = normal]
	rankdir = LR
	iv -> me
	iv -> dv
	me -> dv

	# Graph
	graph [overlap = true, fontsize = 10]
}"

grViz(code)