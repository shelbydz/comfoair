 Commands = {
    ["bootloader"] = {
      ["question"] = {"67"},
      ["qValues"] = {},
      ["answer"] = {"68"},
      ["aValues"] = {}
    },
    ["firmware"] = {
      ["question"] = {"69"},
      ["qValues"] = {},
      ["answer"] = {"6A"},
      ["aValues"] = {},
    },
    ["rs232"] = {
      ["question"] = {"9B"},
      ["qValues"] = {
        ["end"] = "00",
        ["PCOnly"] = "01",
        ["PCMaster"] = "03",
        ["PCLog"] = "04",

      },
      ["answer"] = {"9C"},
      ["aValues"] = {
        ["byte1"] = {
          ["end"] = "00",
          ["PCOnly"] = "01",
          ["CCEase"] = "02",
          ["PCMaster"] = "03",
          ["PCLog"] = "04",
        }
      }
    },
    ["getInputs"] = {
      ["question"] = {"03"},
      ["qValues"] = {},
      ["answer"] = {"04"},
      ["aValues"] = {
        ["byte1"] = {
          ["01"] = "L1",
          ["02"] = "L2"
        },
        ["byte2"] = {
          ["01"] = "bathroom1",
          ["02"] = "hood",
          ["04"] = "external",
          ["08"] = "wtw",
          ["10"] = "bathroom2",
        }
      }
    },
 }
