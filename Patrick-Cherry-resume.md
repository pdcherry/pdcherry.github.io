<!-- Note to self: if the error shows up: -->
<!-- In grepl("^\\s*$", x) : unable to translate to a wide string -->
<!-- re-type the sptring to avoid non-ASCII characters -->
<!-- see https://stackoverflow.com/questions/76680882/unable-to-translate-to-a-wide-string -->

# Aside

<!-- ```{r} -->
<!-- if(params$pdf_mode){ -->
<!--   cat("View this CV online with links at __") -->
<!-- } else { -->
<!--   cat("[<i class='fas fa-download'></i> Download a PDF of this CV]()") -->
<!-- } -->
<!-- ``` -->

## Contact

-   <i class='fa fa-envelope'></i> pcherry \[at\] pm dot me
-   <i class='fa fa-phone'></i> upon request
-   <i class='fa fa-suitcase'></i> Senior Scientist | Genomics
-   <i class='fa fa-building'></i> Twist Bioscience
-   <i class='fa fa-map'></i> San Francisco, California
-   <i class='fa fa-globe'></i>
    [pdcherry.github.io](https://pdcherry.github.io)
-   <i class='fa fa-github'></i>
    [github.com/pdcherry](https://github.com/pdcherry)
-   <i class='fa fa-linkedin'></i>
    [linkedin.com/in/p-cherry](https://www.linkedin.com/in/p-cherry)
-   <i class='fa fa-id-card'></i> United States Citizen

<!-- Language Skills {#skills} -->
<!-- -------------------------------------------------------------------------------- -->
<!-- ```{r skills graph} -->
<!-- CV %>% print_skill_bars() -->
<!-- ``` -->

## Disclaimer

Last updated on 2024-03-21.

Data-driven résumé made in R using pagedown.

# Main

## Patrick Cherry

PhD scientist skilled in data visualization, statistical modeling,
bioinformatics, biological data science, next-generation sequencing
(NGS), and tool-building. I’ve coded reproducible and rigorous pipelines
for high-throughput experimental designs and multi-omic analyses for
communication to technical and non-technical audiences. I’ve launched
best-in-class oncology reference standards, and invented new molecular
methods for DNA and microbe manipulation. Originally trained in
Molecular Biology, I am passionate about advancing data science and
bioinformatics to improve human health and biotechnology.

## Education

### PhD

University of Colorado School of Medicine

Aurora/Denver, Colorado

2019 - 2013

-   Ph.D. in Molecular Biology
-   Advisor: Jay Hesselberth, PhD.
-   Thesis: RNA Terminus chemistry affects the decay events that target
    HAC1 mRNA during the Unfolded Protein Response

### BA

Hendrix College

Conway, Arkansas

2013 - 2009

-   Biochemistry and Molecular Biology, with Distinction
-   Advisor: Andres Caro, PhD.
-   Senior Capstone Project showing key stress response gene expression
    changes to oxidative stress in liver cells
-   Minor in Mathematics; PI: Lars Seme; Project: Newton’s method as a
    fractal chaotic dynamical system

## Industry Experience

I currently split my time between wet lab and computational activities.
I have worked in a variety of roles ranging from HTP strain onboarding
to genomics scientist. I like collaborative environments where I can
learn from my peers and in turn teach others.

### Senior Scientist

Twist Bioscience

South San Francisco, California

Current - 2022

-   Tech Lead of multiple reference control NPIs and custom OEMs;
    collaborated cross-functionally to launch quality products; includes
    the *Pan-cancer RNA Fusion Controls*, *Fragmentome Calibration
    Controls*, *CNV Controls*, *Pan-cancer cfDNA v2*, and RNA-seq.
-   Mentored a direct report from Senior Research Associate to Scientist
    to serving as a Tech Lead on new product introductions. Managed
    research assistants to produce quality science on deadline.
-   Original research led to multiple outside presentations and patent
    protection of product configuration and biochemical methods.
    Designed and implemented high-throughput RNA synthesis and pooling.
-   Routinely craft custom data analysis pipelines in R and Python;
    documented analyses using `Rmarkdown`, `Quarto`, and `Jupyter`;
    maintain dockerized git / Github bioinformatic QC packages for
    Pan-cancer cfDNA standard and the Pan-cancer RNA Fusion Controls;
    used public databases and feedback from alpha testers to design
    configuration of multiple products.
-   Led new technology evaluation of a new NGS platform with custom
    experiments and bioinformatic analyses in Python, R, and SQL to
    enable faster gene QC in Production. Also led ancillary experiments
    to speed up synthetic gene production. Coded, implemented, and
    distributed on company GitHub an internal package,
    *`twistcolorpal`*, that automatically adds Twist-brand colors to
    `ggplot2` plots and sets up database connectors to `SQL` / Snowflake
    for parameterized `dbplyr` querying. Regularly use R, tidyverse,
    Python, Polars, AWS `s3`, `Spark`, `PySpark`, and `Sparklyr`,
    locally and on Databricks. Regularly implements and runs automated
    code tests with `pytest` and `testthat`.

### Scientist

Twist Bioscience

South San Francisco, California

Current - 2021

-   Tech Lead of *Pan-Cancer Reference Standard*, an ISO-13485 synthetic
    positive control with 458 unique variants among 84 cancer-associated
    genes at six QC’d VAFs, plus a WT control; launched in Nov of 2021.
-   Designed, implemented, & validated widely-used primer removal
    procedure for DNA standards and more.
-   Devised and validated precise high-throughput DNA quantification
    process for accurate pooling. On-boarded droplet digital PCR (ddPCR)
    system into production; designed and validated custom ddPCR assays
    for use in production.
-   Led multiple iterations of custom NGS analysis; refined the QC
    approach and thresholds for ensuring a contamination-free production
    process; extensively used data visualization to communicate complex
    data to cross-functional teams.
-   Made extensive use of UMI sequencing and created novel method to
    rigorously quantify library conversion efficiency to evaluate
    products and reference materials

### Scientist I

Zymergen, Inc.

Emeryville, California

2021 - 2019

-   Designed and implemented an automated high-throughput genotyping
    assay
-   Designed & carried out complex experiments on automation with and
    without LIMS sample tracking
-   Supported a company-wide NGS core under high demand from diverse
    groups with complex needs using data-driven decision making and
    teaching
-   Used statistical methods to screen and optimize a genetic
    engineering protocol for newly-on-boarded microbe; delivered robust
    process while working on New Product Introduction team
-   Built hundreds of plasmids using modern molecular cloning techniques
    like Gibson and Golden Gate

## Research Experience

I worked on a few projects during my PhD, and the RNA repair project led
me to custom 5´-OH RNA-seq libraries, which inspired my fascination with
transcriptomics and bioinformatics.

### Doctoral Research

University of Colorado School of Medicine

Aurora/Denver, Colorado

2019 - 2014

-   Wrote, revised, & published two academic papers on RNA repair &
    yeast genetics
-   Engineered and characterized genetic bypass of essential genes in
    budding yeast; on-boarded CRISPR/Cas9 for efficient and precise gene
    knock-in
-   Expressed, purified, and used wild-type and mutant recombinant
    protein in *E. coli* to carry out an RNA modification enzymatic
    assay
-   Optimized custom RNA-seq library protocol; independently planned,
    executed, troubleshooted RNA modification detection
-   Routinely conducted northern blotting, targeted depletion, primer
    extension, splinted ligation, and other esoteric DNA and RNA
    experiments

## Intellectual Property

Working at Twist and Zymergen on new product research requires
confidentiality, but public evidence of accomplishments often comes in
patent applications. The Legal teams know me well for being a helpful
expert in the process.

### Methylation-mediated adapter removal on nucleic acid sequences

Twist Bioscience

South San Francisco, California

3/7/23

-   US 63/317,466

### Expansion of cfDNA for Libraries

Twist Bioscience

South San Francisco, California

11/12/21

-   US Prov. Pat. Ref No 823.102

### Libraries for mutational analysis

Twist Bioscience

South San Francisco, California

4/9/21

-   US Prov. Pat. Ref No 823.101

### Method for counterselection in microorganisms

Zymergen, Inc.

Emeryville, California

3/25/21

-   US 2021\_0087586 A1

## Selected Publications

I communicate my results clearly, both in writing and in live
presentations. I enjoy writing research papers, but my career has
required more tech notes and app notes recently.

### Twist Pan-cancer synthetic reference materials technical guide

[Twist
Bioscience](https://www.twistbioscience.com/resources/guideguideline/twist-cfdna-pan-cancer-reference-standard-technical-guide)

South San Francisco, California

12/21/21

-   Patrick Cherry & Mike Bocek

### Multiple decay events target HAC1 mRNA during splicing to regulate the unfolded protein response

[eLife](https://doi.org/10.7554/eLife.42262)

N/A

2019

-   Cherry, P., Peach, S., & Hesselberth, J.

### Genetic bypass of essential RNA repair enzymes in budding yeast

[RNA](https://doi.org/10.1261/rna.061788.117)

N/A

2018

-   Cherry, P., White, L., York, K., & Hesselberth, J.

## Selected Presentations & Talks

I give audience-centered presentations by adapting on the fly and over
time to the venue and occasion. I like to *transfer knowledge* by giving
methods/best practices talks whose slides can also serve as
documentation.

### High sensitivity detection of specific ultra low-frequency somatic mutations for minimal residual disease (MRD) monitoring

International Society of Liquid Biopsy Annual Congress

Madrid, Spain

11/19/23

### Twist pan-cancer synthetic RNA fusion control for assay development

[American Association for Cancer
Researchers](https://www.twistbioscience.com/resources/poster/twist-pan-cancer-synthetic-rna-fusion-control-assay-development)

Orlando, Florida

4/16/23

### Use of synthetic CNV fragments to mimic copy number alterations for ctDNA reference standards

[Advances in Genome Biology and
Technology](https://www.twistbioscience.com/resources/poster/use-synthetic-cnv-fragments-mimic-copy-number-alterations-ctdna-reference)

Hollywood, Florida

2/7/23

### Twist pan-cancer synthetic reference materials for cell-free DNA (cfDNA) assay development

[American Association for Cancer
Researchers](https://www.twistbioscience.com/resources/poster/twist-pan-cancer-synthetic-reference-materials-cell-free-dna-cfdna-assay)

New Orleans, Louisiana

4/12/22

### Molecular Methods Meet the Standards: Or how I learned to stop worrying and love UV-quantification

Twist R&D Meeting

South San Francisco, CA

7/13/21

### R use at Zymergen

Z-Tech Talk

Emeryville, CA

6/16/20

### Data-driven troubleshooting of NGS experiments

Data Science Talk

Emeryville, CA

4/20/20

<!-- Trainees & Direct Reports {data-icon=leaf} -->
<!-- -------------------------------------------------------------------------------- -->
<!-- ::: aside -->
<!-- ```{r} -->
<!-- CV %<>% print_text_block('trainees_reports_aside') -->
<!-- ``` -->
<!-- ::: -->
<!-- ```{r} -->
<!-- CV %<>% print_section('trainees_reports') -->
<!-- ``` -->
<!-- ```{r} -->
<!-- CV %<>% print_links() -->
<!-- ``` -->
