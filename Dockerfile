FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y git ghc cabal-install zlib1g-dev

WORKDIR /opt

RUN git clone https://github.com/evincarofautumn/kitten

WORKDIR /opt/kitten
    
RUN cabal sandbox init && \
    cabal update 

WORKDIR /code

COPY bin .

# CMD "./run.sh"