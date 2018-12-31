{
	buff = buffer_create(256, buffer_grow, 1);
    buffer_seek(buff, buffer_seek_start, 0);

	packet_to_send = "{\"name\":\"" + string(player_name) + "\"," + "\"number\":" + string(dice_number) + "}";
	buffer_write(buff, buffer_string, packet_to_send);
	//show_message(packet_to_send);
	//buffer_seek(buff,buffer_seek_start,0);
	//var buff_text = buffer_read(buff, buffer_string);
	//show_message(buff_text);
	//buffer_write(buff, buffer_u8, 100);

    var chars =  network_send_packet( client_socket, buff, buffer_tell(buff) );
	//show_message(chars);
	buffer_delete(buff);
}