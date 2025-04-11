cd $PBS_O_WORKDIR

singularity exec --bind $(pwd):/temp bio_4.3.2_latest.sif bash -c "cd /temp && \
  Rscript --vanilla --slave scripts/r/interproscan_assign_domains.R \
    data/tsv/interproscan_PF01769_interproID.tsv.gz \
    12 \
    data/tsv/interproscan_PF01769_interproID_range_num_tophits.tsv"

cat data/tsv/interproscan_PF01769_interproID_range_num_tophits.tsv | \
  gzip > data/tsv/interproscan_PF01769_interproID_range_num_tophits.tsv.gz
