# Getting started with nf-test

This repository helps you to get started with [nf-test](https://code.askimed.com/nf-test) using a [nextflow pipeline](https://github.com/GoekeLab/bioinformatics-workflows/tree/master/nextflow). 

## Requirements
* Install [nf-test](https://code.askimed.com/nf-test/installation/).
* Clone this repository:
```
git clone https://github.com/askimed/nf-test-examples
```

## Run Tests
All included tests can be executed with a single command. 
```
nf-test test tests/modules/local/*.nf.test 
```

## Run Pipeline
If you want to run the pipeline, please execute the following command: 
```
nextflow run main.nf \
      --left $PWD/test_data/reads_1.fq.gz \
      --right $PWD/test_data/reads_2.fq.gz \
      --ref $PWD/test_data/transcriptome.fa \
      -with-docker quay.io/nextflow/rnaseq-nf:v1.0
```
