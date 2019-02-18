#
#        Indicator 1    Indicator 2
#                  \    /
#                   \  /
#                    \/
#                 Mediator 
#                 /      \
#   Moderator 1  /        \  Moderator 2
#            \  /          \  /
#             \/            \/
#             /              \ 
#            /                \ 
#          IV ---------------> DV
#
library(DiagrammeR)

code = "digraph moderated_mediation_sem {
  # Nodes
  node [shape = rectangle, fontname = Arial, fontsize=9]
  iv [pos = '-3,1!', label = 'Independent\nvariable']
  me [pos = '-1,2!', label = 'Mediator\n(latent factor)', shape = ellipse]
  dv [pos = '1,1!', label = 'Dependent\nvariable']
  mod1 [pos = '-2.9,2.4!', label = 'Moderator 1']
  mod2 [pos = '1.1,2.4!', label = 'Moderator 2']
  blank1 [pos = '-2,1.5!', label = '', width = 0.001, height = 0.001]
  blank2 [pos = '0,1.5!', label = '', width = 0.001, height = 0.001]

  # Nodes: indicators
  node [shape = rectangle, fontname = Arial, fontsize=9, penwidth=0.5, height=0.3]
  me1 [pos = '-1.5,3!', label = 'Indicator 1', fontsize=7]
  me2 [pos = '-0.5,3!', label = 'Indicator 2', fontsize=7]

  # Hide moderator edges.
  { rank = same; blank1 blank2 mod1 mod2 }

  # Edges
  edge [fontname = Arial, fontsize=8]
  mod1   -> blank1 [label = 'Path d      ']
  mod2   -> blank2 [label = 'Path e ']
  iv     -> blank1 [dir = none, label = 'Path a ']
  blank1 -> me     [minlen = 1]
  me     -> blank2 [dir = none, minlen = 1, label = 'Path b']
  blank2 -> dv     [minlen = 1]
  iv     -> dv     [label = 'Path c']

  edge [fontname = Arial, fontsize = 8, penwidth = 0.5]
  me -> {me1 me2}
  
  # Graph
  graph [layout = neato, overlap = false, outputorder = edgesfirst]
}"

grViz(code)