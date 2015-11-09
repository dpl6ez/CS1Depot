module colors
import pair

data primary = red | yellow | blue
data mixed = orange | purple | green | dred | dblue | dyellow

mix: pair primary primary -> mixed
mix (mkPair red red) = dred
mix (mkPair red blue) = purple
mix (mkPair red yellow) = orange
mix (mkPair blue red) = purple
mix (mkPair blue blue) = dblue
mix (mkPair blue yellow) = green
mix (mkPair yellow red) = orange
mix (mkPair yellow blue) = green
mix (mkPair yellow yellow)= dyellow
 
