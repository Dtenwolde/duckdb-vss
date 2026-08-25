Source: https://github.com/unum-cloud/USearch
Tag: v2.26.1

The files in this directory are copied from the tagged upstream release, except
for `index_dense.hpp`. DuckDB-VSS extends its dense-index search API with
overloads accepting `index_search_config_t`, allowing `hnsw_ef_search` to be
applied per query without mutating shared index configuration.

When refreshing the vendored headers, preserve or deliberately reapply this
customization until the configuration-based overloads are available upstream.
