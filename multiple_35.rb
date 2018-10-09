#multiple de 3 et 5 puis somme
def multiple(num_size)
  my_tab = []
  i = 1
  while i < num_size
    if (i % 3).zero || (i % 5).zero
      my_tab << i
    end
    i += 1
  end
  p Arr.sum
end