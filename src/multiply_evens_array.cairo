%builtins output

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*}():

    let (ptr) = alloc()

    assert [ptr] = 2
    assert [ptr + 1] = 3
    assert [ptr + 2] = 4
    assert [ptr + 3] = 5
    assert [ptr + 4] = 5
    assert [ptr + 5] = 5

    let (product_of_evens) = multiply_evens_array(ptr, 6)
    serialize_word(product_of_evens)

    return()
end

func multiply_evens_array(arr : felt*, size) -> (product):
    if size == 0:
        return(product=1)
    end

    let (product_of_rest) = multiply_evens_array(arr = arr+2, size = size-2)
    return (product = [arr] * product_of_rest)
end

