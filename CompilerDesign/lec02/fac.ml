module Program = struct
 let v_X = ref 0
let v_ANS = ref 0


 let run () = 
v_X := 6;
v_ANS := 1;
while !v_X <> 0 do
 v_ANS := (!v_ANS * !v_X);
v_X := (!v_X + -1) done
end
