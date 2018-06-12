/// @description Time Global Update
// You can write your code in this editor
day += 1

if day > 30 {
	month += 1
	day = 1
}
if month > 12{
	year += 1
	month = 1
}

strDay = string(day)
strMonth = string(month)
strYear = string(year)

if string_length(strDay) < 2
{
strDay = "0" + string(day)	
}

if string_length(strMonth) < 2
{
strMonth = "0" + string(month)	
}

switch (string_length(strYear))
{
	case 1:
		strYear = "000" + string(year)
		break;
	case 2:
		strYear = "00" + string(year)
		break;
	case 3:
		strYear = "0" + string(year)
		break;
}

global.day = day
global.month = month
global.year = year
alarm[0] = 60