// FastQC
process FASTQC {
  publishDir params.outdir

  input:
    path index
    path left
    path right
  output:
    path 'qc', emit: qc

  """
    mkdir qc && fastqc --quiet '${params.left}' '${params.right}' --outdir qc
  """
}
