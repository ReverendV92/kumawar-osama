
$modelname	v92/kuma/characters/osama/npc_combine

$model	Osama	head {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.200000 -3.250001 67.350008 "eyeball_r" 1 4 "iris_unused" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.200000 -3.250001 67.350008 "eyeball_l" 1 -4 "iris_unused" 0.63

	eyelid upper_right "osama_bin_laden.vta" lowerer 1 -0.08 neutral 0 0.2 raiser 2 0.31 split 1 eyeball "eye_right"
	eyelid lower_right "osama_bin_laden.vta" lowerer 3 -0.25 neutral 0 -0.22 raiser 4 -0.09 split 1 eyeball "eye_right"
	eyelid upper_left "osama_bin_laden.vta" lowerer 5 -0.08 neutral 0 0.2 raiser 6 0.31 split -1 eyeball "eye_left"
	eyelid lower_left "osama_bin_laden.vta" lowerer 7 -0.25 neutral 0 -0.22 raiser 8 -0.09 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "osama_bin_laden.vta" 
	{
		defaultflex frame 0
		// Already in eyelid lines: flex "upper_right" frame 1
		// Already in eyelid lines: flex "upper_right" frame 2
		// Already in eyelid lines: flex "lower_right" frame 3
		// Already in eyelid lines: flex "lower_right" frame 4
		// Already in eyelid lines: flex "upper_left" frame 5
		// Already in eyelid lines: flex "upper_left" frame 6
		// Already in eyelid lines: flex "lower_left" frame 7
		// Already in eyelid lines: flex "lower_left" frame 8
		flex "AU42" frame 9
		flexpair "AU1" 1 frame 10
		flexpair "AU2" 1 frame 11
		flexpair "AU4" 1 frame 12
		flexpair "AU1AU2" 1 frame 13
		flexpair "AU12" 1 frame 14
		flexpair "AU12" 1 frame 15
		flex "AU12AU25" frame 16
		flexpair "AU15" 1 frame 17
		flexpair "AU17" 1 frame 18
		flexpair "AU10" 1 frame 19
		flex "AU16" frame 20
		flexpair "AU6" 1 frame 21
		flexpair "AU9" 1 frame 22
		flexpair "AU25" 1 frame 23
		flexpair "AU18" 1 frame 24
		flexpair "AU18" 1 frame 25
		flexpair "AU22" 1 frame 26
		flexpair "AU20" 1 frame 27
		flex "AU32" frame 28
		flex "AU24" frame 29
		flex "AU38" frame 30
		flex "AU31" frame 31
		flexpair "AU26" 1 frame 32
		flexpair "AU27" 1 frame 33
		flexpair "AU26Z" 1 frame 34
	}

	flexcontroller eyelid range 0 1 right_lid_raiser
	flexcontroller eyelid range 0 1 left_lid_raiser
	flexcontroller eyelid range 0 1 right_lid_tightener
	flexcontroller eyelid range 0 1 left_lid_tightener
	flexcontroller eyelid range 0 1 right_lid_droop
	flexcontroller eyelid range 0 1 left_lid_droop
	flexcontroller eyelid range 0 1 right_lid_closer
	flexcontroller eyelid range 0 1 left_lid_closer
	flexcontroller eyelid range 0 1 half_closed
	flexcontroller eyelid range 0 1 blink
	flexcontroller brow range 0 1 right_inner_raiser
	flexcontroller brow range 0 1 left_inner_raiser
	flexcontroller brow range 0 1 right_outer_raiser
	flexcontroller brow range 0 1 left_outer_raiser
	flexcontroller brow range 0 1 right_lowerer
	flexcontroller brow range 0 1 left_lowerer
	flexcontroller nose range 0 1 right_cheek_raiser
	flexcontroller nose range 0 1 left_cheek_raiser
	flexcontroller nose range 0 1 wrinkler
	flexcontroller nose range 0 1 dilator
	flexcontroller mouth range 0 1 right_upper_raiser
	flexcontroller mouth range 0 1 left_upper_raiser
	flexcontroller mouth range 0 1 right_corner_puller
	flexcontroller mouth range 0 1 left_corner_puller
	flexcontroller mouth range 0 1 right_corner_depressor
	flexcontroller mouth range 0 1 left_corner_depressor
	flexcontroller mouth range 0 1 chin_raiser
	flexcontroller phoneme range 0 1 right_part
	flexcontroller phoneme range 0 1 left_part
	flexcontroller phoneme range 0 1 right_puckerer
	flexcontroller phoneme range 0 1 left_puckerer
	flexcontroller phoneme range 0 1 right_funneler
	flexcontroller phoneme range 0 1 left_funneler
	flexcontroller phoneme range 0 1 right_stretcher
	flexcontroller phoneme range 0 1 left_stretcher
	flexcontroller phoneme range 0 1 bite
	flexcontroller phoneme range 0 1 presser
	flexcontroller phoneme range 0 1 tightener
	flexcontroller phoneme range 0 1 jaw_clencher
	flexcontroller phoneme range 0 1 jaw_drop
	flexcontroller phoneme range 0 1 right_mouth_drop
	flexcontroller phoneme range 0 1 left_mouth_drop
	flexcontroller mouth range 0 1 smile
	flexcontroller mouth range 0 1 lower_lip
	flexcontroller head range -30 30 head_rightleft
	flexcontroller head range -15 15 head_updown
	flexcontroller head range -15 15 head_tilt
	flexcontroller eyes range -30 30 eyes_updown
	flexcontroller eyes range -30 30 eyes_rightleft
	flexcontroller body range -30 30 body_rightleft
	flexcontroller chest range -30 30 chest_rightleft
	flexcontroller head range -0.2 0.2 head_forwardback
	flexcontroller gesture range -1 1 gesture_updown
	flexcontroller gesture range -1 1 gesture_rightleft

	localvar right_open
	localvar left_open
	localvar right_lip_suppressor
	localvar left_lip_suppressor
	localvar right_depressor_suppressor
	localvar left_depressor_suppressor
	localvar right_corner_suppressor
	localvar left_corner_suppressor
	localvar right_drop_suppressor
	localvar left_drop_suppressor
	localvar right_drop
	localvar left_drop
	%upper_right_raiser = right_lid_raiser * (1 - right_lid_droop * 0.8) * (1 - right_lid_closer) * (1 - blink)
	%upper_right_neutral = (1 - right_lid_droop * 0.8) * (1 - right_lid_raiser) * (1 - right_lid_closer) * (1 - blink)
	%upper_right_lowerer = right_lid_closer + blink * (1 - right_lid_closer)
	%upper_left_raiser = left_lid_raiser * (1 - left_lid_droop * 0.8) * (1 - left_lid_closer) * (1 - blink)
	%upper_left_neutral = (1 - left_lid_droop * 0.8) * (1 - left_lid_raiser) * (1 - left_lid_closer) * (1 - blink)
	%upper_left_lowerer = left_lid_closer + blink * (1 - left_lid_closer)
	%lower_right_raiser = right_lid_closer + blink * 0.5 * (1 - right_lid_closer)
	%lower_right_neutral = (1 - right_lid_closer) * (1 - 0.5 * blink) * (1 - right_lid_tightener * 0.5) * (1 - right_cheek_raiser * 0.25)
	%lower_right_lowerer = 0
	%lower_left_raiser = left_lid_closer + blink * 0.5 * (1 - left_lid_closer)
	%lower_left_neutral = (1 - left_lid_closer) * (1 - 0.5 * blink) * (1 - left_lid_tightener * 0.5) * (1 - left_cheek_raiser * 0.25)
	%lower_left_lowerer = 0
	%AU1R = right_inner_raiser * (1 - right_outer_raiser) * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_outer_raiser) * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_inner_raiser) * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_inner_raiser) * (1 - left_lowerer)
	%AU1AU2R = right_inner_raiser * right_outer_raiser * (1 - right_lowerer)
	%AU1AU2L = left_inner_raiser * left_outer_raiser * (1 - left_lowerer)
	%AU4R = right_lowerer
	%AU4L = left_lowerer
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%AU9R = wrinkler
	%AU9L = wrinkler
	%AU38 = dilator
	%right_open = smile + right_part * (1 - smile) + right_puckerer + right_funneler + right_upper_raiser * 0.5 + lower_lip * 0.5
	%left_open = smile + left_part * (1 - smile) + left_puckerer + left_funneler + left_upper_raiser * 0.5 + lower_lip * 0.5
	%right_lip_suppressor = 1 / %right_open * (1 - presser) * (1 - bite)
	%left_lip_suppressor = 1 / %left_open * (1 - presser) * (1 - bite)
	%AU10R = right_upper_raiser * right_upper_raiser * 0.5 * %right_lip_suppressor
	%AU10L = left_upper_raiser * left_upper_raiser * 0.5 * %left_lip_suppressor
	%AU25R = right_part * right_part * %right_lip_suppressor * (1 - smile)
	%AU25L = left_part * left_part * %left_lip_suppressor * (1 - smile)
	%AU12AU25 = smile * smile * 0.5 * (%right_lip_suppressor + %left_lip_suppressor)
	%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
	%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor
	%AU22R = right_funneler * right_funneler * %right_lip_suppressor
	%AU22L = left_funneler * left_funneler * %left_lip_suppressor
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R)) * (1 - smile)
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L)) * (1 - smile)
	%right_depressor_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + bite + right_corner_puller + right_stretcher + right_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile * 0.5)
	%left_depressor_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + bite + left_corner_puller + left_stretcher + left_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile * 0.5)
	%AU15R = right_corner_depressor * right_corner_depressor * %right_depressor_suppressor
	%AU15L = left_corner_depressor * left_corner_depressor * %left_depressor_suppressor
	%right_corner_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + bite + right_corner_puller + right_stretcher + right_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile)
	%left_corner_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + bite + left_corner_puller + left_stretcher + left_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile)
	%AU12R = right_corner_puller * right_corner_puller * %right_corner_suppressor
	%AU12L = left_corner_puller * left_corner_puller * %left_corner_suppressor
	%AU20R = right_stretcher * right_stretcher * %right_corner_suppressor
	%AU20L = left_stretcher * left_stretcher * %left_corner_suppressor
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)
	%right_drop_suppressor = 1 / (0.5 * %right_open + right_mouth_drop) * (1 - presser) * (1 - bite)
	%left_drop_suppressor = 1 / (0.5 * %left_open + left_mouth_drop) * (1 - presser) * (1 - bite)
	%right_drop = right_mouth_drop * right_mouth_drop * %right_drop_suppressor
	%left_drop = left_mouth_drop * left_mouth_drop * %left_drop_suppressor
	%AU26R = jaw_drop * (1 - %right_drop) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU26L = jaw_drop * (1 - %left_drop) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27R = jaw_drop * %right_drop * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27L = jaw_drop * %left_drop * jaw_drop / (jaw_clencher + jaw_drop)
	%AU16 = lower_lip * lower_lip * 0.25 * (%right_lip_suppressor + %left_lip_suppressor) * (1 - 0.5 * (%AU27R + %AU27L))
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5 + %AU12AU25 + %AU16 * 0.4
}

$bodygroup	Body	
{	
	studio	base
	studio	base_proxy
}

$bodygroup Scarf
{
	studio scarf
	studio scarf_proxy
	blank
}
$bodygroup Turban
{
	studio	turban
	studio	turban_proxy
	blank
}

$model	Arms	arms
$model	Boots	Boots

$cdmaterials	models/v92/kuma/characters
$cdmaterials	models/v92/kuma/characters/osama
$cdmaterials	models/humans
$cdmaterials	models/humans/male

$BBox -34.072 -19.396 -2.928 43.184 33.295 89.094

$hboxset		default
$hbox 1 "ValveBiped.Bip01_Head1" -1.250  -6.500  -3.190  8.250  3.500  3.310
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0.000  -2.750  -2.750  12.510  1.750  2.250
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0.000  -2.190  -2.380  13.000  1.810  1.620
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.060  -2.000  -1.500  4.060  1.000  2.500
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0.000  -3.000  -2.250  12.390  2.000  2.750
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.500  -2.200  -1.550  12.500  1.800  2.450
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.060  -2.000  -2.500  4.060  1.000  1.500
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0.000  -3.750  -3.250  17.850  3.750  3.250
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.000  -3.510  -3.280  15.640  3.490  2.720
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.070  -2.000  -2.840  5.040  5.000  2.160
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.500  -3.000  -2.190  2.500  0.000  2.460
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0.000  -3.750  -3.250  17.850  3.750  3.250
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.000  -3.510  -2.820  15.640  3.490  3.180
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.060  -2.010  -2.280  5.050  4.990  2.720
$hbox 7 "ValveBiped.Bip01_R_Toe0" -0.500  -3.000  -2.600  2.500  0.000  2.100
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.500  -5.500  -6.000  7.500  8.500  5.000
$hbox 2 "ValveBiped.Bip01_Spine2" -2.500  -2.500  -7.000  14.500  7.500  7.000
$Attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1.00 -6.50 -0.00 rotate 0.00 -80.00 -90.00
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 -0.00 rotate -0.00 90.00 90.00
$attachment "forward" "ValveBiped.forward" 0.00 0.00 0.00 rotate 0.00 0.00 -0.00
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" -0.00 -0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" -0.00 -0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" -0.00 0.00 0.00 rotate -90.00 -90.00 0.00
//$includemodel "humans/male_shared.mdl"
//$includemodel "humans/male_ss.mdl"
//$includemodel "humans/male_gestures.mdl"
//$includemodel "humans/male_postures.mdl"
$includemodel	combine_soldier_anims.mdl
//$includemodel	m_anm.mdl
$surfaceprop	flesh
$EyePosition 0 0 70
$illumposition 0 0 40
$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00

$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000
$collisionjoints	phymodel {

	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"
	$jointmerge "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01_Spine1"

	$jointconstrain "valvebiped.bip01_spine2" x limit -70.00 70.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -65.00 95.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -115.00 150.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -135.00 135.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -140.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -150.00 115.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -135.00 135.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -140.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -70.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -70.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -90.00 55.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -110.00 125.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 145.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -70.00 70.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -65.00 40.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -55.00 90.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -110.00 120.00 0.00
	
	$jointconstrain "valvebiped.bip01_l_calf" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -12.00 145.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -55.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -40.00 40.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -55.00 35.00 0.00
	
	$jointconstrain "valvebiped.bip01_l_toe0" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_toe0" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_toe0" z limit -46.00 46.00 0.00
	
	$jointconstrain "valvebiped.bip01_r_toe0" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_toe0" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_toe0" z limit -46.00 46.00 0.00
	$animatedfriction 1.000 400.000 0.500 0.300 0.000
}