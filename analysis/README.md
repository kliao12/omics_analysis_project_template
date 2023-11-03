# Directory overview for `analysis`

The subdirectories within `analysis` are divided by stage of analysis. Each stage will include a subdirectory ID that denotes a particular type of munging task or analysis (e.g., RNA-seq sample QC, differential gene expression analysis) using a sequential numbering system. Each munging task or analysis type will have its own subdirectory with a sequential numbering system for specific instances of that type.

Directory descriptions:

* `0_examples`: Notebooks demonstrating how to do various tasks/analyses.
* `0_templates`: Cookie cutter notebook templates useful for copying when starting a new analysis.
* `1_munging`: Data munging and preprocessing tasks (e.g., phenotype harmonization, variable construction, data formatting).
* `2_eda`: Exploratory data analyses (e.g., data characterization).
* `3_modeling_and_inference`: Model fitting and inference tasks.
* `4_reports`: Deliverable reports summarizing data characteristics, model details, inference results, etc.
