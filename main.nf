/*
 *  DAF pipeline
 *
 */

nextflow.enable.dsl=2
params.version = "v0.0.dev"

include { minflow } from './workflows/minflow.nf'

workflow NFCORE_MINFLOW {
    minflow ()
}

workflow {
    NFCORE_MINFLOW ()
}
