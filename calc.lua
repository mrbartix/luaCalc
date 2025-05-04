
function main()
  print("\27[31m-------------------------------------------")
  print("Welcome to a lua calculator!")
  print("Please type in your first number")
  print("-------------------------------------------")
  first = io.read() --first num
  
  if tonumber(first) == nil then
    print("ERROR: Wrong Input! Aborting...")
    reRun()
  else
    firstNum = tonumber(first)
    print("You chose " .. firstNum .. " as your first number.")
  end
  
  print("Please type in your second number") --second num
  second = io.read()
  
  if tonumber(second) == nil then
    print("ERROR: Wrong Input! Aborting...")
    reRun()
  else
    secondNum = tonumber(second)
    print("You chose " .. secondNum .. " as your first number.")
  end
  
  print("Please choose operation that you want to execute:")
  print("Addition [1];")
  print("Subtraction [2];")
  print("Multiplication [3];")
  print("Division [4]")
  
  operation = tostring(io.read()) --operation

  if operation == "1" then --checking if its not addition
    print("It's " .. firstNum + secondNum)
    reRun()
  elseif operation == "2" then
    print("It's " .. firstNum - secondNum)
    reRun()
  elseif operation == "3" then
    print("It's " .. firstNum * secondNum)
    reRun()
  elseif operation == "4" then
    print("It's " .. firstNum / secondNum)
    reRun()
  else
    print("ERROR: Wrong input! Aborting...")
    reRun()
  end
end --end main()

function reRun()
  print("Do you want to re-run this script? [Y/n]")
  local runAgain = tostring(io.read())
  if runAgain == "Y" then
    main()
  elseif runAgain == "n" then
    print("Aborting... Bye!")
    os.exit()
  else
    print("ERROR: Wrong input! Aborting...")
    os.exit()
  end
end
main() --executing