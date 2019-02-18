#
#       /----> ME1 --->\
#      /                \
#    IV ---------------> DV
#      \                /
#       \----> ME2 --->/
#
library(DiagrammeR)

code <- "
  digraph causal {
	# Nodes
	node [shape = reactangle, fontname = Arial]
	iv [label = 'Independent\nvariable']
	me1 [label = 'Mediator 1']
	dv  [label = 'Dependent\nvariable']
	me2 [label = 'Mediator 2']
	

	# Edges
	edge [color = black, arrowhead = normal]
	rankdir = LR
	iv -> me1
	iv -> dv
	iv -> me2
	me1 -> dv
	me2 -> dv

	# Graph
	graph [overlap = true, fontsize = 10]
}"

grViz(code)