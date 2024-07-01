#!/bin/bash

# Install Python dependencies
pip install -r requirements.txt

# Run NLTK setup
python setup_nltk.py

# Download GloVe vectors
mkdir -p ~/.gensim-data
curl -Lo ~/.gensim-data/glove-wiki-gigaword-100.gz "http://nlp.stanford.edu/data/glove.6B.100d.txt.gz"
gzip -d ~/.gensim-data/glove-wiki-gigaword-100.gz
