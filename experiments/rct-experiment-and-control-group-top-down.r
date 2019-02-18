#
#              Start
#             /     \
#            /       \
#           /         \
#     Experiment    Control
#       group        group
#         |            |
#         |            |
#        Foo          Bar
#         |            |
#         |            |
#        End          End
#
library(DiagrammeR)

code <- "
digraph randomized_control_trial_procedure {
  graph [layout = dot, rankdir = TD]
  
  # Nodes
  node [shape = rectangle, label = '', fontname = Arial]
  node [label = 'Randomization']
  start
  node [label = 'Experiment\ngroup']
  experiment
  node [label = 'Control\ngroup']
  control
  node [label = 'Foo']
  foo
  node [label = 'Bar']
  bar
  node [label = 'End']
  end1
  node [label = 'End']
  end2
  
  
  
  # Edges
  edge [color = black]
  start -> {experiment control}
  experiment -> foo
  control -> bar
  foo -> end1
  bar -> end2
}"

grViz(code)