#!/bin/bash

TOOLS=(bam2bed
bam2bed_gnuParallel
bam2bed_sge
bam2bed_slurm
bam2starch
bam2starch_gnuParallel
bedextract
bedmap
bedops
closest-features
convert2bed
gff2bed
gff2starch
gtf2bed
gtf2starch
gvf2bed
gvf2starch
psl2bed
psl2starch
rmsk2bed
rmsk2starch
sam2bed
sam2starch
sort-bed
starch
starchcat
starch-diff
starchstrip
unstarch
vcf2bed
vcf2starch
wig2bed
wig2starch)

cat << EOF > template
#!/bin/bash

VERSION=2.4.40
PACKAGE=BEDOPS
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)
if [ \$HOSTNAME == 'workshop.bil.psc.edu' ]; then
        STORAGES=(/ocean /hive /local)
else
    	STORAGES=(/ocean /bil /hive /local)
fi
OPTIONS=""
for STORAGE in "\${STORAGES[@]}"
do
  	if [ -d "\$STORAGE" ]; then
                OPTIONS=\$OPTIONS" -B \$STORAGE"
        fi
done
singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        git add $TOOL
done

rm -f template
