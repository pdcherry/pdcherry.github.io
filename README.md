[![Deploy Quarto site to Pages](https://github.com/pdcherry/pdcherry.github.io/actions/workflows/publish.yml/badge.svg)](https://github.com/pdcherry/pdcherry.github.io/actions/workflows/publish.yml)

### Readme
Code for Patrick's personal blog and homepage.

### How it's done
Blog is rendered locally from .qmd Quarto notebooks, where R, Python, SQL, etc. code is executed, and the outputs are written to Quarto's frozen `_freeze` directory format, where applicable.

The Deploy Quarto site to Pages Github action uses Quarto (in the shell commandline without R or RMarkdown) to render the html pages from frozen Quarto, set up the pages, and transfer the website artifact to Github pages.

#### Note on how it's done
This method is different than the way most Quarto blogs work (and certainly different than most Rmarkdown / Blogdown websites). More info about this soon to come.
