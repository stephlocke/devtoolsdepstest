FROM ubuntu
RUN add-apt-repository --enable-source --yes "ppa:marutter/rrutter"
RUN apt-get update
RUN apt-get install -y r-base-dev r-cran-rcpp
RUN Rscript -e "install.packages('devtools', repos='https://cran.rstudio.com/')"
RUN git clone https://github.com/tidyverse/ggplot2.git
RUN cd ggplot2
RUN Rscript -e 'devtools::install(pkg = ".", upgrade_dependencies = FALSE)'