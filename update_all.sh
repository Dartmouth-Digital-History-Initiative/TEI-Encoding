filename=$1
f2=${filename%%.*}
f3=${f2#"transcripts/"}

echo "Trying $f3 and tsv/$f3\_persons.tsv"

ddhi_update_persons $filename tsv/$f3\_persons.tsv > updated/$f3\_updated.xml

echo "Trying $f3 and tsv/$f3\_orgs.tsv"

ddhi_update_orgs updated/$f3\_updated.xml tsv/$f3\_orgs.tsv > updated/$f3\_updated.xml

echo "Trying $f3 and tsv/$f3\_places.tsv"

ddhi_update_places updated/$f3\_updated.xml tsv/$f3\_places.tsv > updated/$f3\_updated.xml

echo "Trying $f3 and tsv/$f3\_events.tsv"

ddhi_update_events updated/$f3\_updated.xml tsv/$f3\_events.tsv > updated/$f3\_updated.xml
