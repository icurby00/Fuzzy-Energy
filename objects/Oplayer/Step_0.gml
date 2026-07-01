key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump =  keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));


	var move = key_right - key_left;

				hsp = move * walkspd;
				vsp = vsp + grv;

		if move != 0 
		{
			facing_dir = move;
			image_xscale = facing_dir;
			direction = point_direction(x, y, x + move, y);
		}

if place_meeting(x,y+1, Pground) && (key_jump)
{
	vsp = -9;
	grv = 0.6;
}
canjump -= 1;

//Horizontal Collison
			if (place_meeting(x+hsp,y,Pground))
			{
				while (!place_meeting(x+sign(hsp),y,Pground))
				{
					x = x + sign(hsp);
				}
					hsp = 0;
			}
			x = x + hsp;


			//Vertical Collison
			if (place_meeting(x,y+vsp,Pground))
			{
				while (!place_meeting(x,y+sign(vsp),Pground))
				{
					y = y + sign(vsp);
				}
				vsp = 0;
				
			}
			y = y + vsp;

if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
		{
			buffer_counter = buffer_max;
		}
		if buffer_counter > 0				
		{
			buffer_counter -= 1;			 
			if  canjump > 0
			{
				vsp = -12;					
				buffer_counter = 0;	      
			}
		}
if (hsp != 0 ) image_xscale = sign(hsp);
move_wrap(true,true,sprite_width);