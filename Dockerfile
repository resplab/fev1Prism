FROM opencpu/base
RUN R -e 'remotes::install_github("resplab/fev1")'
RUN R -e 'remotes::install_github("resplab/fev1Prism")'
RUN echo "opencpu:opencpu" | chpasswd
