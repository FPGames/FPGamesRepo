/// @description Make large numbers smaller using letters
/// @function minifyQuantity(value)
/// @arg value Number to minify
ret = argument0

if argument0 > 999 and argument0 < 9999
{
	ret = string_char_at(string(argument0),1) + "." + string_char_at(string(argument0),2) + "K"
}

if argument0 > 9999 and argument0 < 99999
{
	ret = string_char_at(string(argument0),1) + string_char_at(string(argument0),2) + "." + string_char_at(string(argument0),3) + "K"
}
if argument0 > 99999 and argument0 < 999999
{
	ret = string_char_at(string(argument0),1) + string_char_at(string(argument0),2) + string_char_at(string(argument0),3) + "." + string_char_at(string(argument0),4) + "K"
}
if argument0 > 999999 and argument0 < 9999999
{
	ret = string_char_at(string(argument0),1) +  "." + string_char_at(string(argument0),2) + "M"
}
return ret;