#!/usr/bin/env ruby

# file: diffyc32.rb

require 'c32'
require 'rexle'
require 'diffy'


class DiffyC32
  using ColouredText

  def initialize(s1, s2)
    html = Diffy::Diff.new(s1, s2).to_s(:html)

    doc = Rexle.new(html)
    a = doc.root.xpath('ul/li/*')
    a2 = a.map do |e|
      txt = case e.name.to_sym
      when :del
        colour_strong(e, :red)
        ' - '.red + ' ' + e.plaintext
      when :ins
        colour_strong(e) {|x| x.light_green}
        ' + '.green + ' ' + e.plaintext
      when :span
        '   ' + ' ' + e.plaintext
      else
        '   ' + ' ' + e.plaintext
      end      
    end

    @s =  a2.join("\n")
  end

  def to_s()
    @s
  end

  private

  def colour_strong(e, colour=:magenta)

    # check for strong element
    strong = e.element('strong')

    if strong then

      strong.text = if block_given? then
        yield(strong.text.to_s)
      else
        strong.text.to_s.send(colour.to_sym)
      end

    end
    
  end
end

if __FILE__ == $0 then
  string1, string2 = ARGV
  puts DiffyC32.new(string1, string2).to_s
end
