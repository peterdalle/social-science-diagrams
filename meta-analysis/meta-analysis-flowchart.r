# https://stackoverflow.com/questions/53618591/meta-analysis-flowchart
library(glue)
library(DiagrammeR)

excluded <- glue('Full text articles excluded
             n = 1000
             Reasons for exclusion
             Reason 1
             Reason 2')

code <- "
digraph cohort_flow_chart
{
node [fontname = Helvetica, fontsize = 12, shape = box, width = 4]
a[label = 'Records identified in original search']
b[label = 'Records identified with update']
c[label = 'Records after duplicates removed']
d[label = 'Records screened']
e[label = 'Records excluded']
f[label = 'Full text articles assessed']
g[label = 'Studies included']
h[label = '@@1']



{ rank = same; a b}
{ rank = same; d, e}
{ rank = same; f, h}

a -> c;
b -> c;
c -> d;
d -> e [ minlen = 3 ];
d -> f;
f -> h [ minlen = 3 ];
f -> g;
}

[1]: excluded
"

grViz(code)