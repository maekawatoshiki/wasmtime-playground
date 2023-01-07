(module
  (func $sum (param $x i32) (result i32)
    (local $s i32)
    (local $i i32)

    i32.const 0
    local.set $s
    i32.const 1
    local.set $i

    block
      loop
        local.get $i
        local.get $x
        i32.gt_s
        br_if 1

        local.get $s
        local.get $i
        i32.add
        local.set $s

        local.get $i
        i32.const 1
        i32.add
        local.set $i

        br 0
      end
    end

    local.get $s
  )
  (export "sum" (func $sum))
)


