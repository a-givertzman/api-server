# This stuff required for automate integration tests
#
# Run this script to perform all implemented integration tests
#
# to extend list of tests add new script to the following array
declare -a tests=(
    "src/tests/integration/test_common.py"
    "src/tests/integration/test_executable.py"
    "src/tests/integration/test_python.py"
    "src/tests/integration/test_sql_postgres.py"
)
#
# for local execution change python version here if required
# for github actions change PYTHON_VERSION variable in the ./github/workflows/test.yaml 
default_python_version=python3.10
python="${PYTHON_VERSION:-$default_python_version}"
echo "Python version used for testing: $python"
#
#
# do not change all following code
#
set -a # automatically export all variables
source src/tests/integration/.env
set +a

$python -m pip install -r src/tests/integration/requirements.txt

$python -c"
import sys; sys.path.insert(0,'$PWD/src/tests/integration')
import conftest; conftest.kill_all_servers()
"
sleep 3s

$python -c"
import sys; sys.path.insert(0,'$PWD/src/tests/integration')
import conftest; conftest.run_api_server()
"


for test in "${tests[@]}"; do
    if eval $python $test ; then
        echo "$test - succeeded"
    else
        echo "$test - failed"
        exit 1;
    fi
done

$python -c"
import sys; sys.path.insert(0,'$PWD/src/tests/integration')
import conftest; conftest.kill_all_servers()
"
