package main

deny[msg] {
  not input.add == true
  msg = "FAIL - Use COPY instead of ADD" 
}

warn[msg] {
  not input.user == "root"
  msg = "WARN - Ensure last user is not root"
}
