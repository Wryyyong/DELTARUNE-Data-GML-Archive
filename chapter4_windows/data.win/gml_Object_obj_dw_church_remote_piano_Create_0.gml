ubuff = 0;
rbuff = 0;
lbuff = 0;
dbuff = 0;
xbuff = 0;
cbuff = 0;
zbuff = 0;
shelfresettimer = 0;
shelfresettime = 15;
hijackcamera = true;
camcont = false;
engaged = false;
con = 0;
timer = 0;
endtimer = 0;
endtime = 15;
buffer = 0;
followshelf = false;
showtut = false;

if (room == room_dw_church_bookshelfpuzzle || i_ex(obj_dw_church_bookshelfpuzzle))
	followshelf = true;

mpos = 0;
myshelf[0] = -4;
extflag = "none";
cutscene_master = obj_dw_church_secretpiano;
memvolume = -1;
desiredx = camerax();
desiredy = cameray();
camx = 1500;
camy = 820;
instructionLerp = 0;
engaged = 0;
scr_depth();
scr_darksize();
view_enabled = true;
view_visible[0] = true;
