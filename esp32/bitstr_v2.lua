-- ChiliPeppr BitString
-- Allow 1's and 0's in a string to represent bits

local bitstr = {}
-- bitstr = {}

-- Pass in "10101010"
-- Returns string.char() byte with 0xAA
-- Pass in "11001100101010"
-- Returns string.char() bytes with 0xCC 0xAA
function bitstr.bitPack(str)

  -- print("String to bitPack:"..str)
  --use a string to store our bytes
  local ret = ""

  -- make sure string length divisible by 8
  -- if not, pad it 
  if string.len(str) % 8 ~= 0 then
    local howMuchToPad = 8 - (string.len(str) % 8)
    -- print(str)
    -- print("Padding Len:"..string.len(str)..",howMuchToPad:"..howMuchToPad)
    str = str .. string.rep("0",howMuchToPad)
    -- print(str)
  end

  local ctr = 0
  local b = 0 --string.char(0)
  for i=1,string.len(str) do

    local s = string.sub(str,i,i)
    -- print("Working on:"..string.format("%2d",i).." "..s)
    
    -- figure out which position this bit should be set for
    local posToSet = 7 - (ctr % 8) -- i.e. ctr = 1 is remainder 1, ctr = 8 is remainder 0 0
    
    if s == "1" then
      -- if 1, then set left most bit to one based on our pos
      -- i.e. if ctr = 1, then set "10000000"
      -- i.e. if ctr = 8, then set "00000001"
      -- or, just bitshift left, then set first bit
      -- print("doing a 1")
      b = bit.set(b, posToSet) -- puts a 1 on right-most bit (least significant bit)
      -- print("after bit set: 0x"..string.format("%X",b))
    elseif s == "0" then
      -- print("doing a 0")
      -- b = bit.set(b,posToSet) -- puts a 1 on right-most bit (least significant bit)
      -- print("after bit set: 0x"..string.format("%X",b))
      
    else
      print("huh, got something other than 1 or 0")
    end

    if 7 - (ctr % 8) == 0 then
      -- we have done 8 chars, start new byte
      -- print("we have done 8 chars. start new byte")
      ret = ret .. string.char(b)
      -- print("Return so far is:"..ret)
      -- print(string.byte(ret,1,string.len(ret)))
      b = 0 --string.char(0)
    end
    
    -- keep track of which time thru loop
    -- for every 8 bits, create a byte
    ctr = ctr + 1

  end
  
  return ret
end

function bitstr.log(s)
  print(string.byte(s,1,string.len(s)))
end

function bitstr.toBits(num)
    local t={}
    while num>0 do
        rest=num%2
        table.insert(t,1,rest)
        num=(num-rest)/2
    end 
    -- pad bits to 8 bits 
    local bitStr = table.concat(t)
    local padLeft = 8 - string.len(bitStr)
    bitStr = string.rep("0",padLeft) .. bitStr
    -- print("bits:"..bitStr)
    return bitStr --t --table.concat(t)
end

function bitstr.charStrToBits(charStr)
  local t = {}
  for i=1,string.len(charStr) do
    local b = string.byte(charStr, i)
    -- print(b)
    table.insert(t, bitstr.toBits(b))
  end
  print( table.concat(t, " ") )
  return t
end

-- result = bitstr.bitPack("11")
-- result = bitstr.bitPack("10101010")
-- result = bitstr.bitPack("00000001")
-- result = bitstr.bitPack("1010101010101010")
-- print(result)
-- print(string.byte(result,1,string.len(result)))
-- charStrToBits(result)
-- ret = bitstr.bitPack("10000000000100000000010000000010000000100000010000010000100010010")
-- print(string.byte(ret,1,string.len(ret)))
-- print( string.format("%X",bitstr.bitPack(sAccel)) )

return bitstr

