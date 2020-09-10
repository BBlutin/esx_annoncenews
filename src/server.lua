
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)


ESX.RegisterUsableItem('ticket_news', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local ticket = xPlayer.getInventoryItem('ticket_news')
    if ticket.count >= 1 then
        print("test")
	    xPlayer.removeInventoryItem('ticket_news', 1)
	    TriggerClientEvent('bblutin_annonces:getAnnonce', source)
	end	
		
end)

RegisterServerEvent('bblutin_annonces:annonceStart')
AddEventHandler('bblutin_annonces:annonceStart', function(result , society)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
    local text = result
    local titre = society
    print(society.." : "..text)
    for i = 1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('bblutin_annonces:annonceStart', xPlayers[i], text, titre)
    end

    Citizen.Wait(10000)

    local xPlayers = ESX.GetPlayers()
    for i = 1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('bblutin_annonces:annonceStop', xPlayers[i])
    end

end)