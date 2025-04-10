source /etc/profile.d/modules.sh
module load InterProScan/5.72-103.0
cd $PBS_O_WORKDIR
mkdir -p data/tsv
zcat db/interpro_api/PF01769.faa.gz | sed 's/\*$//' > db/interpro_api/PF01769.faa
interproscan.sh -o data/tsv/interproscan_PF01769.tsv -cpu 12 -i db/interpro_api/PF01769.faa -f TSV --tempdir data/tsv/temp_interproscan_PF01769
