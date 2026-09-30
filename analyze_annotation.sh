GTF=Mus_musculus.GRCm38.75_chr1.gtf

# Q1a: number of genes
grep -v "^#" $GTF | awk -F"\t" '$3=="gene"' | wc -l

# Q1b: genes by biotype
grep -v "^#" $GTF | awk -F"\t" '$3=="gene"' | sed 's/.*gene_biotype "\([^"]*\)".*/\1/' | sort | uniq -c | sort -nr
