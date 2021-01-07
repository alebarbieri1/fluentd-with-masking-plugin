OLD_IFS=$IFS
IFS=','
for field in $IGNORED_FIELDS; do echo $field >> /opt/fields-to-mask.dat; done
IFS=$OLD_IFS
./entrypoint.sh