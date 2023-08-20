ch1 = Channel.of(1,2,3)
ch2 = Channel.of(1)

process SUM {
    input:
    val x
    val y

    output:
    stdout

    script:
    """
    echo \$(($x+$y))
    """
}

workflow {
    SUM(ch1,ch2.first()).view()
    
    Channel.fromPath( './data/ggal/**.fq' , hidden:true)
     	 .view()
   
    Channel
     	.fromFilePairs('./data/ggal/*_{1,2}.fq')
 	.view()

    Channel
  	.fromPath('data/meta/random.txt')
  	.splitText( by: 2 ) { it.toUpperCase() }
  	.view()
}
