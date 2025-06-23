scr_enemy_object_init();
global.invc = 0.5;
progress = 0;

if (room == room_dw_church_arena) {
	with (obj_dw_church_arena) {
	}
}

with (obj_battleback)
	instance_destroy();

recruitcount = 1;
talkmax = 90;
image_speed = 0.16666666666666666;
idlesprite = spr_gerson_idle;
hurtsprite = spr_gerson_idle;
sparedsprite = spr_gerson_idle;
hairindex = 0;
movesiner = 0;
attackpattern = 0;
boxoffset = false;
trueturn = 0;
difficulty = 0;
turn = 0;
phase = 1;
patternstate = 0;
rr = -1;
scr_spearpattern_reset();
attacktimer = 0;
attackcon = 0;
rtimer = 0;
talked = 0;
talkedcon = 0;
dodgetimer = 0;
attackdebug = -1;
difficultydebug = -1;
musicdebug = 0;
songtime = 0;
songplaying = 1;
resumeinterval = 1.715;
diagonal_enabled = 0;
transformsfx = 0;
postenemyturnevent = 0;
postturntimer = 0;
reachedendphase = 0;
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talkedcon = 0;
susietalks = 0;
rudebusterhitcount = 0;
rudebusterhitcountmax = 1;
susiehitbyrudebustercount = 0;
susiehitbyrudebustercon = 0;
rudebusterdelay = 0;
swingtimer = 0;
swingdown_ex = 0;
swingdown_multitelegraph = 0;
goldalpha = 0;
goldcon = 0;
hitbox_con = 0;
hitbox_timer = 0;
endcon = 0;
endtimer = 0;
end_cutscene_version = 0;
frozentimer = 0;
fasterheart = false;
swingdownbeatspeed = 23;
savebattlecontrollerdepth = obj_battlecontroller.depth;
rudebusterflashcon = 0;
rudebusterflashtimer = 0;
susieusedultimateheal = 0;
gothitlastturn = 0;
beenhit = false;
introtalkcon = 0;
introballooncon = 0;
firstconversationhappened = 0;
nothitevent = false;
mercylaughcon = 0;
mercylaughtimer = 0;
mercylaughcount = 9;
spinxscale = 1;
spinspeed = 5;
saverudebusterstarcount = 9;
spintimer = 0;
spinindex = 0;
scr_spellget(2, 11);
init = 0;
squishbox = false;
repeatonce = 0;
have_used_final_attack = false;
laughtimer = 0;

if (scr_flag_get(853) != 0) {
	trueturn = 1;
	turn = 1;
	attackpattern = 1;
	repeatonce = 1;
}

if (!variable_global_exists("justice_reached_25_first_time"))
	global.justice_reached_25_first_time = 0;

if (!variable_global_exists("justice_reached_50_first_time"))
	global.justice_reached_50_first_time = 0;

if (!variable_global_exists("justice_reached_75_first_time"))
	global.justice_reached_75_first_time = 0;

if (!variable_global_exists("justice_attacked_twice"))
	global.justice_attacked_twice = 0;

if (!variable_global_exists("justice_healed"))
	global.justice_healed = 0;

if (!variable_global_exists("justice_rudebuster"))
	global.justice_rudebuster = 0;

if (!variable_global_exists("justice_item"))
	global.justice_item = 0;

if (!variable_global_exists("justice_attempts"))
	global.justice_attempts = 0;

dialogue_string1 = stringsetloc("So you got moves,&so what?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_145_0");
dialogue_string2 = stringsetloc("You're facing a hero.&There isn't anything&that's gonna stand&in our way!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_146_0");
dialogue_string3 = stringsetloc("So the story goes,&so the story goes./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_147_0");
dialogue_string3b = stringsetloc("But ain't every story&better with a little&twist?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_148_0");
dialogue_string4 = stringsetloc("H... huh?&Something&feels... off.../%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_150_0");
dialogue_string5 = stringsetloc("You won't&learn anything&runnin' away,&y'know!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_151_0");
dialogue_string6 = stringsetloc("If you've got&guts, let's see&how you deal&facing everything&head-on!!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_152_0");
dialogue_string7 = stringsetloc("(Kris, help&me out!)/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_153_0");
dialogue_string8 = stringsetloc("If you've got guts,&c'mon and let your&axe do the talking!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_155_0");
dialogue_string9 = stringsetloc("You gotta BLOCK, you&understand?!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_157_0");
dialogue_string9b = stringsetloc("(Kris, don't mess&this up)/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_158_0");
dialogue_string12 = stringsetloc("As long as you're GREEN,&you can't run away!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_160_0");
dialogue_string12b = stringsetloc("Unless you FACE DANGER&HEAD ON... These bullets&will do you in!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_161_0");
dialogue_string13 = stringsetloc("Did you ever hear&that old tale?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_163_0");
dialogue_string14 = stringsetloc("Yes, the old tale,&based upon the&prophecy.../%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_164_0");
dialogue_string14b = stringsetloc("Lord of the Hammer./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_165_0");
dialogue_string14c = stringsetloc("Think I heard about it.&What happens?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_166_0");
dialogue_string15 = stringsetloc("Chapter 1&The March of&the Dark King./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_168_0");
dialogue_string16 = stringsetloc("The heroes defeat&the king and&stop the dragon./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_169_0");
dialogue_string18 = stringsetloc("Chapter 2&The City of &the Shining./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_171_0");
dialogue_string18b = stringsetloc("The heroes do&battle in chariots&to save the Queen./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_172_0");
dialogue_string19 = stringsetloc("Chapter 3, The &Isles of &Northernlight./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_174_0");
dialogue_string20 = stringsetloc("The heroes travel&among the islands&and catch a glimpse&of a lost land./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_175_0");
dialogue_string21 = stringsetloc("Chapter 4, The&Trials of the &Holy Hammer./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_177_0");
dialogue_string22 = stringsetloc("A great smith gives&the heroes a&terrible weapon./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_178_0");
dialogue_string23 = stringsetloc("Chapter 5, The &Field of Pink &and Gold./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_180_0");
dialogue_string24 = stringsetloc("The vast garden is&charred in an inferno&of jealousy./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_181_0");
dialogue_string25 = stringsetloc("...What happens next?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_183_0");
dialogue_string26 = stringsetloc("Geheheh! Who knows?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_184_0");
dialogue_string27 = stringsetloc("There was only one more&chapter... After that,/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_185_0");
dialogue_string28 = stringsetloc("It all stopped./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_186_0");
dialogue_string29 = stringsetloc("That next book, it&never did get written./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_188_0");
dialogue_string30 = stringsetloc("The story, it became so &grand, so overwhelming,/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_189_0");
dialogue_string31 = stringsetloc("Some say it swallowed up&the author himself./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_190_0");
dialogue_string35 = stringsetloc("The ones who could write&the next, the youth,&the pen was lying&there for them to&pick up./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_194_0");
dialogue_string36 = stringsetloc("To make the next page./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_195_0");
dialogue_string37 = stringsetloc("...they never did./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_196_0");
dialogue_string38 = stringsetloc("But you, my dear?&I see a story lit&up in your eyes.../%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_198_0");
dialogue_string39 = stringsetloc("Burnin' bright...&Burnin' black.&Burnin' up&everything./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_199_0");
dialogue_string40 = stringsetloc("The bell's ringin' now.&Seems we've reached&the final rounds./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_201_0");
dialogue_string41 = stringsetloc("So... how do you &think it all ends?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_202_0");
dialogue_string42 = stringsetloc("No, how do you want&it to end?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_203_0");
dialogue_string43 = stringsetloc("An ending, huh.../%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_205_0");
dialogue_string44 = stringsetloc("...If I could choose… &I guess.../%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_206_0");
dialogue_string45 = stringsetloc("I wouldn't have an &ending!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_207_0");
dialogue_string46 = stringsetloc("It's just better if&stuff just...&goes on forever, right?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_208_0");
dialogue_string47 = stringsetloc("Gah ha ha ha&ha ha ha!!! Well&ain't that somethin'./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_210_0");
dialogue_string48 = stringsetloc("At this late hour,&with the bells ringing&out their justice./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_211_0");
dialogue_string49 = stringsetloc("You choose eternity./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_212_0");
dialogue_string50 = stringsetloc("Miss, hold on&dearly to that thought./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_214_0");
dialogue_string51 = stringsetloc("For the tides of fate&are drawing close./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_215_0");
dialogue_string52 = stringsetloc("And soon, an ocean&of ink shall wash&across the pages./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_216_0");
dialogue_string53 = stringsetloc("But... there is one&thing that can&overwrite the dark./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_218_0");
dialogue_string54 = stringsetloc("A white pen,&known as hope./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_219_0");
dialogue_string55 = stringsetloc("Miss! I believe...&this is what you hold./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_220_0");
dialogue_string56 = stringsetloc("Me? Nah, Kris&has the pen./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_221_0");
dialogue_string57 = stringsetloc("My weapon's like a&hairbrush or something./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_222_0");
dialogue_string58 = stringsetloc("Geh-hahahahaha!&Is that so?&Is that SO???/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_223_0");
dialogue_string59 = stringsetloc("Yep.&Now shut up&and give me&that axe!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_224_0");
dialogue_string64 = stringsetloc("Wh... what kind&of cheap trick&was that!?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_226_0");
dialogue_string65 = stringsetloc("Sorry, thought you'd hit&it back! Geh heh heh!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_227_0");
dialogue_string66 = stringsetloc("Oh yeah!? I'll show&you!! Kris, let's use&it again!!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_228_0");
dialogue_string67 = stringsetloc("Hmm, dunno what&you just did,&but you should&probably keep&it up!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_231_0");
dialogue_string68 = stringsetloc("... y'know, since&you're gonna&lose if ya&don't, gahah!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_232_0");
dialogue_string69 = stringsetloc("Whew, gaha! What a rush!&You're really pickin'&this stuff up fast!&Now it's my turn...!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_235_0");
justice_healed = 0;
justice_rudebuster = 0;
justice_item = 0;
dialogue_string70 = stringsetloc("Before, you said you&fancied yourself a&hero, didn't ya?&Hmmm... That's&real interesting./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_242_0");
dialogue_string71 = stringsetloc("Now, I don't know&much about \"heroes\"...&... But I know that&whatever ya call 'em,&there is someone./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_244_0");
dialogue_string72 = stringsetloc("Someone who'll never&give up trying to&do the right thing,&no matter what./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_245_0");
dialogue_string73 = stringsetloc("There's no prophecy&or legend 'bout anyone&like that./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_247_0");
dialogue_string74 = stringsetloc("It's just something&I know is true./%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_248_0");
dialogue_string75 = stringsetloc("Now, where's my&haircut!? Geh ha ha!!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_249_0");
dialogue_string76 = stringsetloc("Now, where's my&haircut? Geh ha ha!/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_251_0");
dialogue_string77 = stringsetloc("You aren't givin' up&now, are ya?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_252_0");
dialogue_string78 = stringsetloc("Put some shell into&it, will ya?/%", "obj_hammer_of_justice_enemy_slash_Create_0_gml_253_0");
dialogue_string79 = stringsetloc("*\\EA (Hey Kris, if this guy wants a haircut, let's ATTACK...!)", "obj_hammer_of_justice_enemy_slash_Create_0_gml_258_0");
haveattacked = false;
nohairsprite = false;
endshaketimer = 0;
resetsusie = 0;
