# Omics data analysis project repository template

This template repository provides an organizational structure for more quickly setting up projects focused on the analysis of omics data. The directory structure accomodates projects that focus mainly on using semi-processed omics data (e.g., transcript quantifications derived from RNA-seq reads) as opposed to starting from raw data from omics assays. This README should be replaced by `README_template.md` for new repositories created from this template repository.

```
# Directory tree

{project name}
├── LICENSE
├── README.md
├── README_template.md
├── analysis
│   ├── 0_examples
│   ├── 0_templates
│   │   └── r_analysis_notebook_template.ipynb
│   ├── 1_munging
│   │   ├── 0000
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   ├── 0001
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   └── README.md
│   ├── 2_eda
│   │   ├── 0000
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   ├── 0001
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   └── README.md
│   ├── 3_modeling_and_inference
│   │   ├── 0000
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   ├── 0001
│   │   │   ├── 0001
│   │   │   │   ├── figures
│   │   │   │   ├── code
│   │   │   │   ├── serialized
│   │   │   │   └── tables
│   │   │   └── README.md
│   │   └── README.md
│   ├── 4_reports
│   │   ├── 0001
│   │   │   ├── 0001
│   │   │   └── README.md
│   │   └── README.md
│   └── README.md
├── data
│   ├── processed
│   │   ├── README.md
│   │   └── dataset_0001
│   │       ├── 0001
│   │       └── README.md
│   ├── raw
│   │   ├── README.md
│   │   ├── annotations
│   │   └── dataset_0001
│   └── tmp
│       └── dataset_0001
├── scratch
├── src
│   ├── bash
│   ├── docker
│   │   ├── README.md
│   │   └── jupyter_settings
│   │       └── overrides.json
│   ├── python
│   └── r
└── tests
    └── code_linting
        ├── python3
        │   └── pylint
        │       └── pylintrc
        └── r
            └── lintr
                └── lint.R
```

<details>

<summary>Subdirectory descriptions</summary><br />

* `data`: Consists of data used for exploratory data analysis, model fitting, and statistical inference. Original data files are retrieved and stored in the `raw` folder. Intermediate files during processing are held in `tmp` before the final files are stored in `processed`. For analyses used to generate reports, there should be no dependencies on files in `tmp` so that those files can be deleted as needed.
* `analysis`: Contains interactive notebooks (e.g., Jupyter) or code, visualizations, tables, and serialized output files for various stages of data analysis projects. The subdirectories further divide results by type of analysis and analysis instance, using a sequential numbering system.
* `src`: Contains reusable source code and utility scripts used in data retrieval, preparation, and analysis.
* `tests`: Contains code for unit testing the code maintained in the src folder. Also includes code linting tools for style checking Python and R code.
* `scratch`: Scratch space for temporary local files.

**Note:** Typically in omics analyses, multiple iterations of a processed dataset or analysis are generated. This is considered in the directory structure through the use of numeric subdirectories that categorize files relevant to a specific dataset, analysis type, or analysis iteration. In the directory tree, the incremental numbering for subdirectories uses a 4-digit ID format that can accomodate 9999 analysis types/variations.

</details>
