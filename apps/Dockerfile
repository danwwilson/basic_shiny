FROM rocker/r-base

# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev 
    
# basic shiny functionality
RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='https://cloud.r-project.org/')"

# copy the app to the image
RUN mkdir /root/shinyapp
COPY shinyapp /root/shinyapp

COPY Rprofile.site /usr/lib/R/etc/ 

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/shinyapp')"]

