# How to make common social science diagrams using DiagrammeR

The [DiagrammeR package](http://rich-iannone.github.io/DiagrammeR/) is great for programmatically creating diagrams using the [GraphViz language](https://www.graphviz.org/).

However, it can be challenging to figure out how to create common graphs using GraphViz. Therefore, I compiled a list of some common graphs and plots to get you started.

## Concepts

Display hierarchies and relationships between theoretical constructs.

[![](concepts/concept-relationships.png)](concepts/concept-relationships.r)   
[Hierarchy of concepts](concepts/concept-relationships.r)

## Experiments

Randomization procedure.

[![](experiments/rct-experiment-and-control-group.png)](experiments/rct-experiment-and-control-group.r)  
[Randomized control trial, experiment and control group](experiments/rct-experiment-and-control-group.r) 

[![](experiments/rct-experiment-and-control-group-top-down.png)](experiments/rct-experiment-and-control-group-top-down.r)  
[Randomized control trial, experiment and control group - top down](experiments/rct-experiment-and-control-group-top-down.r) 


[![](experiments/factorial-experiment.png)](experiments/factorial-experiment.r)  
[2 x 3 factorial experiment with pre-test and post-test](experiments/factorial-experiment.r) 

## Causal diagrams

Variables and relationships, directed acyclic graphs (DAG's) etc.

[![](causal-diagrams/cause-effect.png)](causal-diagrams/cause-effect.r)  
[Cause and effect (2 variables)](causal-diagrams/cause-effect.r)

[![](causal-diagrams/cause-mediator-effect.png)](causal-diagrams/cause-mediator-effect.r)  
[Cause, mediator and effect (3 variables)](causal-diagrams/cause-mediator-effect.r)

[![](causal-diagrams/cause-moderator-effect.png)](causal-diagrams/cause-moderator-effect.r)  
[Cause, moderator and effect (3 variables)](causal-diagrams/cause-moderator-effect.r)

[![](causal-diagrams/mediation-one-mediator.png)](causal-diagrams/mediation-one-mediator.r)  
[Partial mediation with 1 mediator (3 variables)](causal-diagrams/mediation-one-mediator.r)

[![](causal-diagrams/mediation-two-mediators.png)](causal-diagrams/mediation-two-mediators.r)  
[Partial mediation with 2 mediators (4 variables)](causal-diagrams/mediation-two-mediators.r)

## Structural equation models

Latent factors and their indicators etc.

[![](sem/moderated-mediation-sem.png)](sem/moderated-mediation-sem.r)  
[Moderated mediation with latent factor](sem/moderated-mediation-sem.r)

## Meta-analysis

Flowcharts for inclusion and exclusion of studies.

[![](meta-analysis/meta-analysis-flowchart.png)](meta-analysis/meta-analysis-flowchart.r)  
[Meta-analysis flowchart for included and excluded studies](meta-analysis/meta-analysis-flowchart.r)

[![](meta-analysis/meta-analysis-flowchart-labels.png)](meta-analysis/meta-analysis-flowchart-labels.r)  
[Meta-analysis flowchart for included and excluded studies, with labels](meta-analysis/meta-analysis-flowchart-labels.r)

## See also

- [Example article: How to include DiagrammeR grViz code as vector graphics in PDF's](example-article.rmd)
