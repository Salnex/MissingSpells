addon.name      = 'MissingSpells';
addon.author    = 'Salnexia';
addon.version   = '0.1';
addon.desc      = 'Spells that be missing';

require "common";
local imgui = require('imgui');
local gui = require('gui');


ashita.events.register('load', 'load_callback1', function () 

end);

ashita.events.register('command', 'command_cb', function (e)
    if (e.command == '/missingspells') then

    end
end);

ashita.events.register('d3d_present', 'present_cb', gui.render);
