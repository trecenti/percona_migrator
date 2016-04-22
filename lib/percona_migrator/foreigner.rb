# TODO: Add integration tests for it
#
# Includes the Foreigner's Mysql2Adapter implemention in
# PerconaMigratorAdapter to support foreign keys
Foreigner::Adapter.safe_include(
  :PerconaMigratorAdapter,
  Foreigner::ConnectionAdapters::Mysql2Adapter
)
