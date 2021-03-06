#!/usr/bin/env bash

# Drop, renerage the DB and ingest the data
bin_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
db_dir=$( cd "${bin_dir}/../db" && pwd )

test -f "${db_dir}/report_contents.db" && rm "${db_dir}/report_contents.db"
eval "${db_dir}/generate_db"
eval "${bin_dir}/ingest"

echo "Renerated the DB"
