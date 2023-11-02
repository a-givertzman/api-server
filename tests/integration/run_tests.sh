# pytest --no-header --tb=short -vv tests/integration/
# python3.10 -m unittest

set -a # automatically export all variables
source tests/integration/.env
set +a

python3.10 -m pip install -r tests/integration/requirements.txt

echo "import sys; sys.path.insert(0,'$PWD/tests/integration')"
python3.10 -c"
import sys; sys.path.insert(0,'$PWD/tests/integration')
import conftest; conftest.kill_all_servers()
"
sleep 3s

python3.10 -c"
import sys; sys.path.insert(0,'$PWD/tests/integration')
import conftest; conftest.run_api_server()
"

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

python3.10 -c"
import sys; sys.path.insert(0,'$PWD/tests/integration')
import conftest; conftest.kill_all_servers()
"
