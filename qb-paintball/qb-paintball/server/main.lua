local PlayersWorking = {}
local Players = {}
local pointblue = 0
local pointred = 0

QBcore = nil

TriggerEvent(':getSharedObject', function(obj) Qbcore = obj end)

AddEventHandler('esx:playerLoaded', function(source)
  local _source = source
  local xPlayer = QBcore.GetPlayerFromId(_source)
end)


RegisterServerEvent('qb-paintball:point')
AddEventHandler('qb-paintball:point', function(model)

if modele == 3 then
	if pointred ~= 9 then
	pointred = pointred + 1
	TriggerClientEvent('showNotify', -1, "~g~Score ~r~Red : " .. pointred .. "~b~ Blue : " .. pointblue)
	else
	TriggerClientEvent('showNotify', -1, "~r~L\'équipe 1 à ~g~gagné~r~ le match de paintball !")
	pointagebleu = 0
    pointagerouge = 0
	end
end

if modele == 2 then
if pointagebleu ~= 9 then
pointagebleu = pointagebleu + 1
TriggerClientEvent('showNotify', -1, "~g~Score ~r~ Rouge : " .. pointagerouge .. " ~b~Bleu : " .. pointagebleu)
else
TriggerClientEvent('showNotify', -1, "~b~L\'équipe 2 à ~g~gagné~w~~b~ le match de paintball !")
pointagebleu = 0
pointagerouge = 0
end
end

end)



RegisterServerEvent('esx_paintball:remmetrezero')
AddEventHandler('esx_paintball:remmetrezero', function()

pointagebleu = 0
pointagerouge = 0

end)

