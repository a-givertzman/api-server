# pytest --no-header --tb=short -vv tests/integration/
# python3.10 -m unittest
python3.10 tests/integration/test_common.py
python3.10 tests/integration/test_sql_postgres.py