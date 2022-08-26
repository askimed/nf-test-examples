#!/usr/bin/env nextflow

/*
========================================================================================
    askimed/nf-test-examples
========================================================================================
    Original Pipeline: https://github.com/GoekeLab/bioinformatics-workflows/
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl=2
// Define pipeline input parameters
// note: input files require the use of absolute paths
params.ref = '/path/to/ref.fasta'
params.left = '/path/to/reads_1.fastq'
params.right = '/path/to/reads_2.fastq'
params.outdir = 'results'



include { RNASEQ } from './workflows/rnaseq'

workflow {
  RNASEQ(file(params.ref),  file(params.left), file(params.right))
}

workflow.onComplete {
    println "Pipeline completed at: $workflow.complete"
    println "Execution status: ${ workflow.success ? 'OK' : 'failed' }"
}
