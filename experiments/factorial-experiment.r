#
#                /-----> Pro everything --->\
#               /                            \
#          Good -------> Anti everything ---->\
#         /     \                              \
#        /       \-----> Neutral -------------->\
#       /                                        \
#  Pr-test                                        Post-test
#      \                                         /
#       \        /-----> Pro everything ------->/
#        \      /                              /
#          Bad  -------> Anti everything ---->/
#               \                            /
#                \-----> Neutral ---------->/
#ibrary(DiagrammeR)

code <- "digraph goodal_procedure {
  # Nodes
  node [shape=rectangle, style=filled, color=black, label='', fontname = Arial]
  
  node [fillcolor = white]
  start [label = 'Pre-test']
  end   [label = 'Post-test']
  
  # Nodes:factor 1
  node [fillcolor = antiquewhite, label = 'Good']
  good
  
  node [fillcolor = antiquewhite, label = 'Bad']
  bad
  
  # Nodes: good x factor 2 
  node [fillcolor = azure, label = 'Pro everything']
  good_pro
  
  node [fillcolor = azure, label = 'Anti everything']
  good_anti
  
  node [fillcolor = azure, label = 'Neutral']
  good_neutral
  
  # Nodes: bad x factor 2
  node [fillcolor = lavender, label = 'Pro everything']
  bad_pro
  
  node [fillcolor = lavender, label = 'Anti everything']
  bad_anti
  
  node [fillcolor = lavender, label = 'Neutral']
  bad_neutral
  
  
  # Edges
  edge [color = black]
  start      -> {good bad}
  good -> {good_pro good_anti good_neutral}
  bad    -> {bad_pro bad_anti bad_neutral}
  {good_pro good_anti good_neutral
  bad_pro bad_anti bad_neutral} -> end
  
  
  # Graph
  graph [layout = dot, rankdir = LR]
}"

grViz(code)
