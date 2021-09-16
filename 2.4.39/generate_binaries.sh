#!/bin/bash

TOOLS=(bam2bed
bam2starch
bedextract
bedmap
bedops
closest-features
sort-bed
starch
starchcat
starchstrip
unstarch)

cat << EOF > template
#!/bin/bash

VERSION=2.4.39
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
