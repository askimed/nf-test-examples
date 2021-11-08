// Transcriptome alignment and quantification using Salmon
process SALMON_ALIGN_QUANT {
  publishDir params.outdir

  input:
    path index
    path left
    path right
  output:
    path 'quant', emit: quant

  """
    salmon quant -i $index -l A -1 '${left}' -2 '${right}' --validateMappings -o quant
  """
}
