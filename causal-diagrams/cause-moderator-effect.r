#
#          Moderator
#              |
#              |
#    IV ---------------> DV
#
library(DiagrammeR)

code <- "
	digraph mediation_model { 
	  # Nodes  
	  node [shape = rectangle, fontname = Arial, fontsize=9]
	  iv    [pos = '-1,1!', label = 'Independent\nvaraible']
	  blank [pos =  '0,1!', label = '', width = 0.001, height = 0.001]
	  mod   [pos =  '0,2!', label = 'Moderator']
	  dv    [pos =  '1,1!', label = 'Dependent\nvariable']
	    
	  # Hide moderator edges
	  { rank = same; blank mod }
	  
	  # Edges
	  edge [fontname = Arial, fontsize=8]
	  mod -> blank
	  iv -> blank [dir = none]
	  blank -> dv [minlen = 1]

	  # Graph
	  graph [layout = neato, overlap = true, outputorder = edgesfirst]
}"

grViz(code)