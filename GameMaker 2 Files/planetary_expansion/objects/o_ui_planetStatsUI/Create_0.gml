/// @description Setting up UI
// You can write your code in this editor
display_set_gui_size(1920,1080)

alarm[0] = 60

day = global.day
month = global.month
year = global.year

units = 54200
population = 1300000

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