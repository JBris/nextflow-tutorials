#!/usr/bin/env nextflow

params.greeting = 'Hello world!'

include { SPLITLETTERS as SL; CONVERTTOUPPER } from './modules.nf'

workflow my_pipeline {
        Channel.of(params.greeting) | SL | flatten() | CONVERTTOUPPER | view
}

workflow {
    my_pipeline()
}
