--[[
function Login_Message(x)
	print("this is login.lua!" .. x);
end
--]]

local g_face_i = 0

function bt1_OnClick()
	g_face_i = g_face_i + 1
	print("bt1_OnClick")
	tb1:SetText(g_face_i .. "_" ..  tb1:GetText());
end
