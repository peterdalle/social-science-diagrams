#
#              Trainspotting
#                     |
#                     |
#                  Choose
#                  /  |  \
#                /   /\    \
#              /    /  \    \
#            /     /    \     \
#          /      /      \      \
#        /       /        \       \
#      /        /          \        \
#    Life     Job       Career     Family
#
library(DiagrammeR)

code <- "digraph mygraph{
 node [shape=plaintext]
 
 Trainspotting -> Choose
 Choose -> Life
 Choose -> Job
 Choose -> Career
 Choose -> Family
 }"

grViz(code)