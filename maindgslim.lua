--[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]--
















































UI.Separator()

 local version = "\x52\x69\x71\x75\x65"
                                                                                                                                                                                                                                                                                                                           local nick = "\x44\x75\x6E\x67\x65\x6F\x6E" .. version
                                                                                                                                                                                                                                                                              local Nome = UI.Label(nick)

                                                                                                                                                                                                                                                                                                                                                                modules.game_textmessage.displayGameMessage("\x5B" .. nick .. "\x5D\x20\x41\x50\x52\x4F\x56\x45\x49\x54\x45\x20\x4F\x20\x41\x55\x54\x4F\x20\x44\x55\x4E\x47\x45\x4F\x4E\x20\x52\x49\x51\x55\x45\x21")

                                                                                                                                                                                    local cores = {"pink", "white", "green", "red", "blue"}--"green", "red", "black", "green", "orange"
                                                                                                                                                                                                                                 local cores2 = 0
                                                                                                                                       macro(250, function()
                                                                                     cores2 = cores2==#cores and 0 or cores2+1 -- s2 <3
                                                                                                                                                                                                                                                                                                                                                                          Nome:setColor(cores[cores2]) -- s2 <3
end)





UI.Separator()



local riquescripts = addLabel("-- [[ COMBO ]] --", "-- [[ COMBO ]] --")
riquescripts:setColor("orange")


macro(250, "Follow Atk", function()
   if g_game.isOnline() and g_game.isAttacking() then
         g_game.setChaseMode(1)
           end
           end)


macro(1000, "OpenBAG", function()
    bpItem = getBack()
    bp = getContainer(0)

    if not bp and bpItem ~= nil then
        g_game.open(bpItem)
    end

end)



panel = mainTab;

local bugMap = {};


bugMap.macro = macro(50, "THE FLASH", function()
    local pos = pos();
    for key, config in pairs(bugMap.directions) do
        if (bugMap.isKeyPressed(key)) then
            if (storage.bugMapCheck or config.direction) then
                if (config.direction) then
                    turn(config.direction);
                end
                local tile = g_map.getTile({x = pos.x + config.x, y = pos.y + config.y, z = pos.z});
                if (tile) then
                    return g_game.use(tile:getTopUseThing());
                end
            end
        end
    end
end)


bugMap.checkBox = setupUI([[
CheckBox
  id: checkBox
  font: cipsoftFont
  text: Diagonais
  !tooltip: tr('Usar Diagonais')
]]);


bugMap.checkBox.onCheckChange = function(widget, checked)
    storage.bugMapCheck = checked;
end

if storage.bugMapCheck == nil then
    storage.bugMapCheck = true;
end

bugMap.checkBox:setChecked(storage.bugMapCheck);

bugMap.isKeyPressed = modules.corelib.g_keyboard.isKeyPressed;

bugMap.directions = {
    ["W"] = {x = 0, y = -5, direction = 0},
    ["E"] = {x = 3, y = -3},
    ["D"] = {x = 5, y = 0, direction = 1},
    ["C"] = {x = 3, y = 3},
    ["S"] = {x = 0, y = 5, direction = 2},
    ["Z"] = {x = -3, y = 3},
    ["A"] = {x = -5, y = 0, direction = 3},
    ["Q"] = {x = -3, y = -3}
};

macro(200, "Combo",  function()
if g_game.isAttacking() then
say(storage.ComboText)
say(storage.Combo1Text)
say(storage.Combo2Text)
say(storage.Combo3Text)
say(storage.Combo4Text)
end

end,hpPanel4)












local riquescripts2 = addLabel("-- [[ BUFF ]] --", "-- [[ BUFF ]] --")
riquescripts2:setColor("orange")





macro(10000, function()
 say(storage.buff)
end)

addTextEdit("buff", storage.buff or "buff", function(widget, text) storage.buff = text
end)

        



local loadPanelName = "Restart"
local cores = {"pink", "white", "green", "red", "blue"}
local cores2 = 0

local ui = setupUI([[
Panel
  height: 20

  Button
    id: editLoad
    color: yellow
    font: verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 23
    text: Restart
    tooltip: Clique Para Recarregar

]], parent)

ui.editLoad.onClick = function(widget)
    reload()
end

macro(250, function()
    cores2 = cores2 == #cores and 1 or cores2 + 1
    ui.editLoad:setColor(cores[cores2])
end)

UI.Separator()


if player:getBlessings() == 0 then
    say("!bless")
    schedule(2000, function()
        if player:getBlessings() == 0 then
            error("Bless Verificada!")
        end
    end)
end






