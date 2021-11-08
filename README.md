# nf-test-examples

This repository includes a [nextflow example pipeline](https://github.com/GoekeLab/bioinformatics-workflows/tree/master/nextflow) to get started with nf-test.

## Run Pipeline
```
nextflow run main.nf \
      --left $PWD/test_data/reads_1.fq.gz \
      --right $PWD/test_data/reads_2.fq.gz \
      --ref $PWD/test_data/transcriptome.fa \
      -with-docker quay.io/nextflow/rnaseq-nf:v1.0
```
