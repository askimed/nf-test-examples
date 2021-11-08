

include { SALMON_INDEX         } from '../modules/local/salmon_index'
include { SALMON_ALIGN_QUANT   } from '../modules/local/salmon_align_quant'
include { FASTQC               } from '../modules/local/fastqc'


workflow RNASEQ {
  SALMON_INDEX(params.ref)
  SALMON_ALIGN_QUANT( SALMON_INDEX.out, params.left, params.right )
  FASTQC( SALMON_INDEX.out, params.left, params.right )
}

workflow.onComplete {
    println "Pipeline completed at: $workflow.complete"
    println "Execution status: ${ workflow.success ? 'OK' : 'failed' }"
}
