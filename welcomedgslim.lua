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

if player:getBlessings() == 0 then
    say("!bless")
    schedule(2000, function()
        if player:getBlessings() == 0 then
            error("Bless Verificada!")
        end
    end)
end