params.compress = 'gzip'
params.file2compress = "$baseDir/data/ggal/transcriptome.fa"

process FOO {

  input:
  path file

  script:
  if( params.compress == 'gzip' )
    """
    gzip -c $file > ${file}.gz
    """
  else if( params.compress == 'bzip2' )
    """
    bzip2 -c $file > ${file}.bz2
    """
  else
    throw new IllegalArgumentException("Unknown aligner $params.compress")
}

workflow {
  FOO(params.file2compress)
}
