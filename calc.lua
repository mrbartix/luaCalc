
function main()
  print("\27[31m-------------------------------------------")
  print("Welcome to a lua calculator!")
  print("Please type in your first number")
  print("-------------------------------------------")
  first = io.read() --first num
  
  if tonumber(first) == nil then
    print("ERROR: Wrong Input! Aborting...")
    os.exit()
  else
    firstNum = tonumber(first)
    print("You chose " .. firstNum .. " as your first number.")
  end
  
  print("Please type in your second number") --second num
  second = io.read()
  
  if tonumber(second) == nil then
    print("ERROR: Wrong Input! Aborting...")
    os.exit()
  else
    secondNum = tonumber(second)
    print("You chose " .. secondNum .. " as your first number.")
  end
  
  print("Please choose operation that you want to execute:")
  print("Addition [A];")
  print("Subtraction [S];")
  print("Multiplication [M];")
  print("Division [D]")
  
  operation = tostring(io.read()) --operation
  
  if operation == "A" then --checking if its not addition
    Addcalculate()
  elseif operation == "S" then
    Subcalculate()
  elseif operation == "M" then
    Multiplycalculate()
  elseif operation == "D" then
    Devisioncalculate()
  else
    print("ERROR: Wrong input! Aborting...")
    os.exit()
  end
end --end main()

function Addcalculate()
  print("So, to clarify")
  print("As your first number you chose " .. firstNum)
  print("As your operation you chose Addition")
  print("As your second number you chose " .. secondNum)
  print("Looks correct? [Y/n]")
  local yesNo = tostring(io.read())
  if yesNo == "Y" then
    print("Calculating...")
    equals = firstNum + secondNum
    print("It's " .. equals)
    equals = nil
    firstNum = nil
    secondNum = nil
    print("Do you want to re-run the calculator? [Y/n]")
    reRun = tostring(io.read())
    if reRun == "Y" then
      main()
    else
      print("Aborting...")
    end
  else
    print("Aborting...")
    os.exit()
  end
end

function Subcalculate()
  print("So, to clarify")
  print("As your first number you chose " .. firstNum)
  print("As your operation you chose Subtraction")
  print("As your second number you chose " .. secondNum)
  print("Looks correct? [Y/n]")
  local yesNo = tostring(io.read())
  if yesNo == "Y" then
    print("Calculating...")
    equals = firstNum - secondNum
    print("It's " .. equals)
    equals = nil
    firstNum = nil
    secondNum = nil
    print("Do you want to re-run the calculator? [Y/n]")
    reRun = tostring(io.read())
    if reRun == "Y" then
      main()
    else
      print("Aborting...")
    end
  else
    print("Aborting...")
    os.exit()
  end
end

function Multiplycalculate()
  print("So, to clarify")
  print("As your first number you chose " .. firstNum)
  print("As your operation you chose Multiplication")
  print("As your second number you chose " .. secondNum)
  print("Looks correct? [Y/n]")
  local yesNo = tostring(io.read())
  if yesNo == "Y" then
    print("Calculating...")
    equals = firstNum * secondNum
    print("It's " .. equals)
    equals = nil
    firstNum = nil
    secondNum = nil
    print("Do you want to re-run the calculator? [Y/n]")
    reRun = tostring(io.read())
    if reRun == "Y" then
      main()
    else
      print("Aborting...")
    end
  else
    print("Aborting...")
    os.exit()
  end
end

function Devisioncalculate()
  print("So, to clarify")
  print("As your first number you chose " .. firstNum)
  print("As your operation you chose Division")
  print("As your second number you chose " .. secondNum)
  print("Looks correct? [Y/n]")
  local yesNo = tostring(io.read())
  if yesNo == "Y" then
    print("Calculating...")
    equals = firstNum / secondNum
    print("It's " .. equals)
    equals = nil
    firstNum = nil
    secondNum = nil
    print("Do you want to re-run the calculator? [Y/n]")
    reRun = tostring(io.read())
    if reRun == "Y" then
      main()
    else
      print("Aborting...")
    end
  else
    print("Aborting...")
    os.exit()
  end
end
----------------------------executing
main()