list = require('list')
local imgui = require('imgui');

function gui.render()
	if(not gui.isVisible) then
		return;
	end
	imgui.SetNextWindowSize({160, 400}, ImGuiCond_Once);
	if(imgui.Begin('Missing Spells', true)) then
		if (imgui.BeginTabBar('##missingspells_tabbar', ImGuiTabBarFlags_NoCloseWithMiddleMouseButton)) then
			if (imgui.BeginTabItem('Divine', nil)) then
				listSchool(32)
			imgui.EndTabItem();
			end	
			if (imgui.BeginTabItem('Healing', nil)) then
				listSchool(33)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Enhancing', nil)) then
				listSchool(34)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Enfeebling', nil)) then
				listSchool(35)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Elemental', nil)) then
				listSchool(36)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Dark', nil)) then
				listSchool(37)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Summoning', nil)) then
				listSchool(38)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Ninjitsu', nil)) then
				listSchool(39)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Songs', nil)) then
				listSchool(40)
				listSchool(41)
				listSchool(42)
				imgui.EndTabItem();
			end
			if (imgui.BeginTabItem('Geomancy', nil)) then
				listSchool(44)
				imgui.EndTabItem();
			end
			imgui.EndTabBar();
		end
	end
end

function listSchool(school)
	list.stable:each(function (v, k)
		if(v.school == school) then
			imgui.BeginGroup();
				imgui.Text(v.name)
			imgui.EndGroup();
		end
	end);
end
return  gui;
