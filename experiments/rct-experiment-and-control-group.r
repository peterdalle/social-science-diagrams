#
#         / Experiment group
#        / 
#  Start 
#        \
#         \ Control group
#
library(DiagrammeR)

code <- "
digraph randomized_control_trial_procedure {
  graph [layout = dot, rankdir = LR]
  
  # Nodes
  node [shape = rectangle, label = '', fontname = Arial]
  node [label = 'Randomization']
  start
  node [label = 'Experiment group']
  experiment
  node [label = 'Control group']
  control
  
  # Edges
  edge [color = black]
  start -> {experiment control}
}"

grViz(code)