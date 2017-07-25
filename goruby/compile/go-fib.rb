require "ffi"

module Fib
  extend FFI::Library
  ffi_lib "./fib.so"
  attach_function :fib, [:uint], :uint
end

puts Fib.fib(40)
