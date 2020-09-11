# Introducing the DiffyC32 gem

Usage:

    require 'diffyc32'

    string1 = <<-TXT
    Hello how are you
    I'm fine
    That's great
    TXT

    #=> "Hello how are you\nI'm fine\nThat's great\n"

    string2 = <<-TXT
    Hello how are you?
    I'm fine
    That's swell
    TXT

    puts DiffyC32.new(string1, string2).to_s

The DiffyC32 gem uses the Diffy gem to compare 2 strings of text and show the differences using coloured text.

Below is a screenshot of the above output.

![Screenshot of Diffy using coloured text](http://a0.jamesrobertson.eu/r/images/2020/sep/11/diffyc32-example.png)

## Resources

* diffyc32 https://rubygems.org/gems/diffyc32

diffy diffyc32 gem
