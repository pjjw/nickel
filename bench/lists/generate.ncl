let g = fun n => n*2 + 5 in
let generate | forall a. Num -> (Num -> a) -> List a = fun n g =>
  if n == 0 then []
  else generate (n-1) g @ [g n] in

{
  run n =
    generate n g
}