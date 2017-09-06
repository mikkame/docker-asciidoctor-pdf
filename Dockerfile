FROM ruby
RUN apt-get update \
  && apt-get install git graphviz default-jdk fonts-ipafont -y

RUN gem install --no-ri --no-rdoc asciidoctor-diagram && \
    gem install --no-ri --no-rdoc --pre asciidoctor-pdf && \
    gem install --no-ri --no-rdoc asciidoctor-pdf-cjk
