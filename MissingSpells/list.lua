require "common";

local spellList = {
stable = T{},
listLength = 0
}
	for j = 32, 44 do
		for i = 0, 2048 do
			local spell = AshitaCore:GetResourceManager():GetSpellById(i);
			if (spell ~= nil and spell.Skill == j and not AshitaCore:GetMemoryManager():GetPlayer():HasSpell(i)) then
					spellList.listLength = spellList.listLength + 1;
					spellList.stable:append(T{ 
					index = i,
					name = spell.Name[1],
					school = j,
					});
			end
		end
	end
return spellList;
