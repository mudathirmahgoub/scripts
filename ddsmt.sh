DDSMT_PATH="/home/mudathir/.local/bin"
SCRIPT_PATH="/home/mudathir/Desktop/cvc5/scripts"

# usage: get_dd_unknown_opt_diff [binary1] [binary2] [benchmark] [...]
# generates benchmark dd.[benchmark] in the current directory, where the difference is unsat/sat with binaries binary1 and binary2

BINARY1=$1
shift
BINARY2=$1
shift
BENCHMARK=$1
shift
BENCHMARK_BASE="$(basename -- $BENCHMARK)"

echo "Run ddsmt with binaries $BINARY1 and $BINARY2 benchmark $BENCHMARK difference unsat/sat"

$DDSMT_PATH/ddsmt $BENCHMARK dd.$BENCHMARK_BASE $SCRIPT_PATH/result_differs_binary.py unsat sat $BINARY1 $BINARY2 $@