
import Data.Char

cf_e = 2 : concat [[1,2*k,1] | k <- [1..]]

cf lst = foldr (\n (x,y) -> (y+x*n,x)) (last lst,1) $ init lst

problem_65 = sum . map digitToInt . show . fst $ cf $ take 100 $ cf_e 

main = print problem_65
