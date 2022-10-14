# frozen_string_literal: false

# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

# NOTE: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

def rgb(r, g, b)
  convert = {
    0 => '0',
    1 => '1',
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9',
    10 => 'A',
    11 => 'B',
    12 => 'C',
    13 => 'D',
    14 => 'E',
    15 => 'F'
  }
  # for each digit
  # value / 16 and round down
  # remainder from divide 16 mult by 16
  # put together for value
  hexs = [r, g, b].map do |value|
    value = 0 if value < 0
    value = 255 if value > 255
    digit1 = convert[value / 16]
    # value / 16 * 16 cancels out
    digit2 = convert[value % 16]
    digit1 + digit2
  end
  hexs.join
end
