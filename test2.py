def powu(a: float, b: int) -> float:
  res = 1.0

  # Bit 0 (value 1)
  if b % 2 == 1:
    res = res / a
  a = a * a

  # Bit 1 (value 2)
  if int(b / 2) % 2 == 1:
    res = res / a
  a = a * a

  # Bit 2 (value 4)
  if int(b / 4) % 2 == 1:
    res = res / a
  a = a * a

  # Bit 3 (value 8)
  if int(b / 8) % 2 == 1:
    res = res / a
  a = a * a

  # Bit 4 (value 16)
  if int(b / 16) % 2 == 1:
    res = res / a
  a = a * a

  return res