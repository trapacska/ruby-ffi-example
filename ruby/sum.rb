require 'ffi'

module GoFuncs
  extend FFI::Library
  ffi_lib './shared_module/sum.so'
  attach_function :Sum, [:int, :int], :int
end

puts GoFuncs.Sum(41, 1)