//generateName(gender)

//populate gender-neutral names
var i = 0;
var names = [];
var file = file_text_open_read(working_directory + "firstnames.txt");

while (!file_text_eof(file)){
	names[i] = file_text_read_string(file);
	i += 1;
	file_text_readln(file);
}

	file_text_close(file);


var gender = argument0;
switch gender {

	case "male":
		var genderedfile =	file_text_open_read(working_directory + "firstnamesmale.txt");
		while (!file_text_eof(genderedfile)){
			names[i] = file_text_read_string(genderedfile);
			i += 1;
			file_text_readln(genderedfile);
		}
		file_text_close(genderedfile);
		break;
	case "female":
		var genderedfile = file_text_open_read(working_directory + "firstnamesfemale.txt");
		while (!file_text_eof(genderedfile)){
			names[i] = file_text_read_string(genderedfile);
			i += 1;
			file_text_readln(genderedfile);
		}
		file_text_close(genderedfile);
		break;
	default:
		show_debug_message("Did not get an expected gender. Received instead: " + gender)
		break
}

return names[irandom(array_length_1d(names)-1)];