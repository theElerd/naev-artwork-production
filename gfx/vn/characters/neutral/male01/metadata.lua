local function choose( t ) return t[rnd.rnd(1,#t)] end
local clothes_colour = { '#3F3131', '#3A683B', '#304B72', '#841717', '#525851', '#793a07', '#cbe3ee', '#e0893d', '#4362e5', '#e6dbbd', '#ad7d62', '#2b4f5e' }
local skin_colour = { '#F7C4C4', '#975e5e', '#c89393', '#5e4024' }
local metal_colour = { '#5A6266', '#dc970f', '#aaa59c' }
local eye_colour = { '#97CDEF', '#662e18', '#67b974', '#d6a568' }
local hair_colour = { '#513928', '#b2a295', '#a99427', '#341f1f' }
local lips_colour = { "#E2AFAF"}
local hair_svgs = {
   { back = false, mid = "5_head_5_hair_mid_ver1.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver2.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver3.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver4.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver5.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver6.svg", },
   { back = false, mid = "5_head_5_hair_mid_ver7.svg", },
}
local clothes_svgs = {
   {
      back = "1_hands_back_2_clothes_civ1.svg",
      mid = "3_clothes_civ1.svg",
      front = "4_hands_front_2_clothes_civ1.svg",
   }, {
      back = "1_hands_back_2_clothes_civ2.svg",
      mid = "3_clothes_civ2.svg",
      front = "4_hands_front_2_clothes_civ2.svg",
   }, {
      back = "1_hands_back_2_clothes_civ3.svg",
      mid = "3_clothes_civ3.svg",
      front = "4_hands_front_2_clothes_civ3.svg",
   }, {
      back = "1_hands_back_2_clothes_civ4.svg",
      mid = "3_clothes_civ4.svg",
      front = "4_hands_front_2_clothes_civ4.svg",
   }
}
return function ()
   local hair = choose(hair_svgs)
   local clothes = choose(clothes_svgs)
   return {
      replace = {
         {"#aaaaaa", choose(skin_colour)}, -- skin
         {"#cccccc", choose(hair_colour)}, -- hair
         {"#bbbbbb", choose(eye_colour)}, -- eye colour
         {"#ff0000", choose(clothes_colour)}, -- clothes main
         {"#00ff00", choose(clothes_colour)}, -- clothes secondary
         {"#0000ff", choose(clothes_colour)}, -- clothes trim
         {"#0ffff0", choose(metal_colour)}, -- clothes metal
         {"#f0000f", choose(metal_colour)}, -- clothes dmetal
         {"#ababab", choose(lips_colour)}, -- lips
      },
      hair.back,
      choose{
         "1_hands_back_0_skin.svg",
      }, choose{
         "1_hands_back_1_lines.svg",
      },
      clothes.back,
      choose{
         "2_body.svg",
      },
      clothes.mid,
      choose{
         "4_hands_front_0_skin.svg",
      }, choose{
         "4_hands_front_1_lines.svg",
      },
      clothes.front,
      choose{
         "5_head_0_base.svg",
      }, choose{
         "5_head_1_mouth_ver1.svg",
         "5_head_1_mouth_ver2.svg",
         "5_head_1_mouth_ver3.svg",
      }, choose{
         "5_head_2_eyes_ver1.svg",
         "5_head_2_eyes_ver2.svg",
         "5_head_2_eyes_ver3.svg",
      }, choose{
         "5_head_3_nose_ver1.svg",
         "5_head_3_nose_ver2.svg",
         "5_head_3_nose_ver3.svg",
         "5_head_3_nose_ver4.svg",
      }, choose{
         "5_head_4_brows_holder_ver1.svg",
         "5_head_4_brows_holder_ver2.svg",
         "5_head_4_brows_holder_ver3.svg",
      },
      hair.mid,
      choose{
         "5_head_6_ears.svg",
      }, choose{
         "5_head_7_beard_ver1.svg",
         "5_head_7_beard_ver2.svg",
         "5_head_7_beard_ver3.svg",
         "5_head_7_beard_ver4.svg",
         "5_head_7_beard_ver5.svg",
      },
   }
end
