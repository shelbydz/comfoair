local function BaseCommand(hexCommands)
  local self = {}
  -- Command structure:
  -- start - command - size of payload - data - checksum - end
  -- eg to set RS232 mode:
  --  st    cmd  sz dt ck  end
  -- 07 F0 00 9B 01 03 4C 07 F0
  self.command_start = "07 F0 00"
  self.command_end = "07 F0"
  self.command_format = "%s %s %s %s %s %s"
  self.command = ""
  self.command_values = {}

    function self.checksumGenerator(hexValues)
      local decSum = 0
      local decConst = 173
      for k, v in pairs(hexValues) do
        decSum =  decSum + tonumber(v, 16)
      end
      decSum = decSum + decConst
      return string.sub(string.format("0x%8.8x", decSum), 9)
    end

    function self.commandBuilder(command, size, data)
      checksum = self.checksumGenerator({command, size, data})
      returnCommand =   string.upper(
                          string.format(self.command_format,
                                      self.command_start,
                                      command,
                                      size,
                                      data,
                                      checksum,
                                      self.command_end))
      print("command " .. returnCommand)
  
    end
  
    return self

end


inst = BaseCommand()
print(inst.commandBuilder("9B", "01", "03"))
