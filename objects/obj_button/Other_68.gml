var eventid = ds_map_find_value(async_load, "type");

input_map = json_encode(async_load);

//show_message(eventid);

if(eventid == network_type_data)
{
	var buff = ds_map_find_value(async_load, "buffer");
	temp = buffer_read(buff, buffer_string);
	//show_message(temp);
}





