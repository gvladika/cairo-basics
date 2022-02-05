%builtins output

from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*}():
    ## simple prints
    serialize_word(1234)
    serialize_word(4321)

    ## division
    serialize_word(6/3)
    serialize_word(7/3)    
    return ()
end