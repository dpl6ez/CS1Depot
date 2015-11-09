module days

data day = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextday: day -> day
nextday monday = tuesday
nextday tuesday = wednesday
nextday wednesday = thursday
nextday thursday = friday
nextday friday = saturday
nextday saturday = sunday
nextday sunday = monday

nextWeekday: day -> day
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday friday = monday
nextWeekday saturday = monday
nextWeekday sunday = monday

nxtWeekday: day -> day
nxtWeekday monday = tuesday
nxtWeekday tuesday = wednesday
nxtWeekday wednesday = thursday
nxtWeekday thursday = friday
nxtWeekday d = monday
