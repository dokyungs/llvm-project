; RUN: llvm-reduce --test FileCheck --test-arg --check-prefixes=CHECK-ALL,CHECK-INTERESTINGNESS --test-arg %s --test-arg --input-file %s -o %t
; RUN: cat %t | FileCheck --check-prefixes=CHECK-ALL,CHECK-FINAL %s

define i32 @t(i32 %a0) {
; CHECK-ALL-LABEL: @t
; CHECK-FINAL: (i32 %a0) {
;
; CHECK-INTERESTINGNESS: ret i32
; CHECK-FINAL: ret i32 42

  ret i32 42
}
