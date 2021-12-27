#!/bin/bash

# Purpose: PUT is AWS Elasticseatch


export master_user="admin"

export master_user_password="DevOpsMuammadAsim1982!@#$%"

export es_endpoint="https://search-testes-zdsef2glhbomdk533pb22p3ipu.us-east-1.es.amazonaws.com"

export domain_name="testes"



cat << EOF > ES_PUT.sh

curl -XPUT -u '${master_user}:'${master_user_password} '${es_endpoint}/${domain_name}/_doc/1' -d '{"director": "Burton, Tim", "genre": ["Comedy","Sci-Fi"], "year": 1996, "actor": ["Jack Nicholson","Pierce Brosnan","Sarah Jessica Parker"], "title": "Mars Attacks!"}' -H 'Content-Type: application/json'

EOF

chmod +x ES_PUT.sh

source ES_PUT.sh


cat << EOF > ES_GET.sh

curl -XGET -u '${master_user}:'${master_user_password} '${es_endpoint}/${domain_name}/_search?q=mars&pretty=true'

EOF

chmod +x ES_GET.sh

source ES_GET.sh



#End
