// Create reference transcriptome index using Salmom
process SALMON_INDEX {
  input:
    path ref
  output:
    path index, emit: index

  """
    salmon index -t '${ref}' -i index
  """
}
