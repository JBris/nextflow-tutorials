#!/usr/bin/env nextflow     

params.greeting  = 'Hello' 
greeting_ch = Channel.of(params.greeting) 

process SPLITLETTERS { 
    input: 
    val x 

    output: 
    path 'test_*' 

    """ 
    printf '$x' | split -b 6 - test_  
    """ 
} 

process CONVERTTOUPPER { 
    input:  
    path y 

    output: 
    stdout 

    """ 
    rev $y  
    """ 
} 

workflow { 
    letters_ch = SPLITLETTERS(greeting_ch) 
    results_ch = CONVERTTOUPPER(letters_ch.flatten()) 
    results_ch.view{ it } 
}
