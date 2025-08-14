def validateCnpj(cnpj: str):
  cnpj = list(cnpj)
  unwantedCaracters = ['.', '/','-']
  formattedCnpj = [item for item in cnpj if item not in unwantedCaracters]
  
  if len(formattedCnpj) != 14:
    return False
  
  validatingCnpj = formattedCnpj[:12]
  
  weight = [5,4,3,2,9,8,7,6,5,4,3,2]
  
  sumFirstDigit = 0
  i = 0
  while i < len(weight):
    sumFirstDigit += int(validatingCnpj[i]) * weight[i]
    i += 1
    
  firstDigit = sumFirstDigit % 11
  firstDigit = 0 if firstDigit < 2 else 11 - firstDigit
  
  if firstDigit != int(formattedCnpj[12]):
    return False
  
  validatingCnpj.append(firstDigit)
  
  weight = [6,5,4,3,2,9,8,7,6,5,4,3,2]
  
  sumSecondDigit = 0
  i = 0
  while i < len(weight):
    sumSecondDigit += int(validatingCnpj[i]) * weight[i]
    i += 1
    
  secondDigit = sumSecondDigit % 11
  secondDigit = 0 if secondDigit < 2 else 11 - secondDigit
  
  validatingCnpj.append(secondDigit)
  validatingCnpj = [str(digit) for digit in validatingCnpj]
  
  if validatingCnpj == formattedCnpj:
    return True
    
print(validateCnpj('11.222.333/0001-81'))