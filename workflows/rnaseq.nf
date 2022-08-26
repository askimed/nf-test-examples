

include { SALMON_INDEX         } from '../modules/local/salmon_index'
include { SALMON_ALIGN_QUANT   } from '../modules/local/salmon_align_quant'
include { FASTQC               } from '../modules/local/fastqc'


workflow RNASEQ {
  take:
    ref
    left
    right
  main:
    SALMON_INDEX(ref)
    SALMON_ALIGN_QUANT( SALMON_INDEX.out.index, left, right )
    FASTQC( SALMON_INDEX.out.index, left, right )
  emit:
    qc = FASTQC.out.qc
}
