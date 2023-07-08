#!/bin/sh

cd "$(dirname $0)"
source "./lib/assert.sh"

counter=0

assert() {
    local actual="$1"
    local expected="$2"
    local result="$(. "../uwuify.sh" "$actual")"

    counter=$((counter+=1))
    assert_eq "$expected" "$result"

    if [[ $? -eq 0 ]] ; then
        log_success "$(basename $0): test $counter succeed"
    else
        log_failure "$(basename $0): test $counter failed"
    fi
}

assert "hello" "hewwo"
assert "gnu/linux" "gnu/winux"
assert "love you" "wove you"
assert "please protect me" "pwease pwotect me"
