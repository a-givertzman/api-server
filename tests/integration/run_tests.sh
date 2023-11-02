# pytest --no-header --tb=short -vv tests/integration/
# python3.10 -m unittest

python3.10 -m pip install -r tests/integration/requirements.txt

app=python3.10
declare -a tests=(
    "tests/integration/test_common.py"
    "tests/integration/test_executable.py"
    "tests/integration/test_sql_postgres.py"
)

for test in "${tests[@]}"; do
    if eval $app $test ; then
        echo "$test - succeeded"
    else
        echo "$test - failed"
        exit 1;
    fi
done