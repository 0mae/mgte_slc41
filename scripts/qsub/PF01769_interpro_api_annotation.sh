cd $PBS_O_WORKDIR
mkdir -p db/interpro_api
singularity exec --bind $(pwd):/temp bio_4.3.2_latest.sif bash -c "cd /temp && Rscript --vanilla --slave scripts/r/interpro_api_protein_annotation.R db/interpro_api/PF01769.tsv.gz db/interpro_api/PF01769_annotation.tsv"
