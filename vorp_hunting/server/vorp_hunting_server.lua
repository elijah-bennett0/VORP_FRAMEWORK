local VorpCore = exports.vorp_core:GetCore()

local function giveReward(context, data, skipfinal)
	local _source = source
	local Character = VorpCore.getUser(_source).getUsedCharacter

	if Config.joblocked then -- security check
		for index, value in ipairs(Config.Butchers) do
			if Character.job == value.butcherjob then
				TriggerClientEvent("vorp_hunting:lock", _source)
				VorpCore.NotifyObjective(_source, "is job locked", 4000)
				break
			end
		end
	end

	local money, gold, rolPoints, xp = 0, 0, 0, 0
	local givenItem, givenAmount, givenDisplay = {}, {}, {}
	local animal, found
	if context == "skinned" then
		animal = Config.SkinnableAnimals[data.model]
		if animal then
			found = true
			givenItem = animal.givenItem or {}
			givenAmount = animal.givenAmount or {}
			givenDisplay = animal.givenDisplay or {}
			money = animal.money or 0
			gold = animal.gold or 0
			rolPoints = animal.rolPoints or 0
			xp = animal.xp or 0
		end
	elseif context == "pelt" then
		animal = Config.Animals[data.model]
		if animal then
			found = true
			money = animal.money or 0
			gold = animal.gold or 0
			rolPoints = animal.rolPoints or 0
			xp = animal.xp or 0

			local multiplier = 1.0
			if (animal.poorQualityMultiplier and animal.poor) and (data.quality == animal.poor) then
				multiplier = animal.poorQualityMultiplier
			elseif (animal.goodQualityMultiplier and animal.good) and (data.quality == animal.good) then
				multiplier = animal.goodQualityMultiplier
			elseif (animal.perfectQualityMultiplier and animal.perfect) and (data.quality == animal.perfect) then
				multiplier = animal.perfectQualityMultiplier
			end

			money = money * multiplier
			gold = gold * multiplier
			rolPoints = rolPoints * multiplier
			xp = xp * multiplier
		end
	elseif context == "carcass" then
		animal = Config.Animals[data.model]
		if animal then
			found = true
			givenItem = animal.givenItem or {}
			givenAmount = animal.givenAmount or {}
			givenDisplay = animal.givenDisplay or {}
			money = animal.money or 0
			gold = animal.gold or 0
			rolPoints = animal.rolPoints or 0
			xp = animal.xp or 0
		end
	end

	if found then
		local monies = {}
		local moneylinux = (math.floor(money * 100) / 100)
		if Config.Linux == true then
			if money ~= 0 then
				table.insert(monies, Config.Language.dollar .. moneylinux)
				Character.addCurrency(0, money)
			end
		else
			if money ~= 0 then
				table.insert(monies, Config.Language.dollar .. money)
				Character.addCurrency(0, money)
			end
		end

		if gold ~= 0 then
			table.insert(monies, gold .. " gold")
			Character.addCurrency(1, gold)
		end

		if rolPoints ~= 0 then
			table.insert(monies, rolPoints .. " rolPoints")
			Character.addCurrency(2, rolPoints)
		end

		if xp ~= 0 then
			Character.addXp(xp)
		end

		local Webhook = ""  -- Set your webhook URL here


		if #monies > 0 then
			VorpCore.AddWebhook("Hunting", Webhook,
				GetPlayerName(_source) .. " " .. "player received" .. table.concat(monies, ", "), nil, nil, nil, nil, nil)
			VorpCore.NotifyObjective(_source, Config.Language.AnimalSold .. table.concat(monies, ", "), 4000)
		end

		if not skipfinal then
			local entity1 = NetworkGetEntityFromNetworkId(data.netid)
			DeleteEntity(entity1)
			TriggerClientEvent("vorp_hunting:finalizeReward", _source, data.entity, data.horse)
		end

		if #givenItem ~= #givenAmount then
			print('Error: Please ensure givenItem and givenAmount have the same length in the items config.')
		elseif (givenItem ~= nil) and (#givenItem > 0) then
			local formattedGivenItems = {}
			local total = 0

			for k, v in ipairs(givenItem) do
				local nmb = 0

				if type(givenAmount[k]) == "table" then
					nmb = math.random(tonumber(givenAmount[k][1]) or 0, tonumber(givenAmount[k][2]) or 1)
				else
					if givenAmount[k] > 0 then
						nmb = givenAmount[k]
					else
						nmb = math.random(Config.ItemQuantity.Min, Config.ItemQuantity.Max)
					end
				end

				formattedGivenItems[k] = {
					nmb = nmb,
					item = v
				}

				total = total + nmb

				-- Check if there is enough to add, if not send message
				local canCarryInv = exports.vorp_inventory:canCarryItem(_source, v, nmb)
				if not canCarryInv then
					VorpCore.NotifyObjective(_source, Config.Language.FullInventory, 4000)
					TriggerClientEvent("vorp_hunting:unlock", _source)
					return
				end
			end

			-- Give items
			local validDisplays = #givenItem == #givenDisplay
			local givenMsg = ""

			if #formattedGivenItems > 0 then
				if context == "skinned" then
					givenMsg = Config.Language.SkinnableAnimalstowed
				else
					givenMsg = "You received "
				end
				if not validDisplays then givenMsg = givenMsg .. "items..." end
			end

			for k, v in pairs(formattedGivenItems) do
				if validDisplays then
					if k > 1 then
						givenMsg = givenMsg .. Config.Language.join .. givenDisplay[k] .. ((v.nmb > 1) and "s" or "")
					else
						givenMsg = givenMsg .. givenDisplay[k] .. ((v.nmb > 1) and "s" or "")
					end
				end
				exports.vorp_inventory:addItem(_source, v.item, v.nmb)
			end

			if givenMsg ~= "" then
				VorpCore.AddWebhook("Hunting", Webhook, GetPlayerName(_source) .. " player received" .. givenMsg)
				VorpCore.NotifyRightTip(_source, givenMsg, 5000)
			end
		end
	end
	TriggerClientEvent("vorp_hunting:unlock", _source)
end

RegisterServerEvent("vorp_hunting:giveReward", giveReward)

RegisterServerEvent("vorp_hunting:sellInventoryItem")
AddEventHandler("vorp_hunting:sellInventoryItem", function(itemName, itemCount)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter

    local price = Config.ButchersItemPrices[itemName]
    if price then
        local removed = exports.vorp_inventory:subItem(_source, itemName, itemCount)
        if removed then
            local total = price * itemCount
            Character.addCurrency(0, total)
            VorpCore.NotifyObjective(_source, "Sold " .. itemCount .. "x " .. itemName .. " for $" .. total, 4000)
        else
            VorpCore.NotifyObjective(_source, "You don't have enough " .. itemName, 4000)
        end
    else
        VorpCore.NotifyObjective(_source, "That item can’t be sold here", 4000)
    end
end)

RegisterServerEvent("vorp_hunting:sellInventoryItems")
AddEventHandler("vorp_hunting:sellInventoryItems", function()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter

    exports.vorp_inventory:getUserInventory(_source, function(inventory)
        local found = false

        for _, item in pairs(inventory) do
            local itemName = item.name
            local itemCount = item.count

            if Config.ButchersItemPrices[itemName] and itemCount > 0 then
                local price = Config.ButchersItemPrices[itemName]
                local amountToSell = itemCount

                -- Remove item
                local removed = exports.vorp_inventory:subItem(_source, itemName, amountToSell)
                if removed then
                    -- Give money
                    Character.addCurrency(0, price * amountToSell)

                    -- Notify
                    VorpCore.NotifyObjective(_source,
                        "Sold " .. amountToSell .. "x " .. itemName .. " for $" .. (price * amountToSell), 4000)

                    found = true
                    break -- Remove this to sell all matching items
                end
            end
        end

        if not found then
            VorpCore.NotifyObjective(_source, "You don't have any sellable animal items", 4000)
        end
    end)
end)

RegisterServerEvent("vorp_hunting:sellButcherItem")
AddEventHandler("vorp_hunting:sellButcherItem", function(itemName)
    local _source = source
    local trimmedItem = tostring(itemName):match("^%s*(.-)%s*$")
    print("[DEBUG] Received sell request for item:\t" .. trimmedItem)

    local price = Config.ButchersItemPrices[trimmedItem]
    if not price then
        TriggerClientEvent("vorp:TipBottom", _source, "This item can't be sold here.", 4000)
        TriggerClientEvent("vorp_hunting:unlock", _source)
        return
    end

    exports.vorp_inventory:getItemCount(_source, function(count)
        print("[DEBUG] getItemCount returned for", trimmedItem, "→", count)

        if not count or count < 1 then
            TriggerClientEvent("vorp:TipBottom", _source, "You don’t have any of that item.", 4000)
            TriggerClientEvent("vorp_hunting:unlock", _source)
            return
        end

        exports.vorp_inventory:subItem(_source, trimmedItem, count, function(success)
            if not success then
                print("[ERROR] Failed to remove items for", trimmedItem)
                TriggerClientEvent("vorp:TipBottom", _source, "Failed to remove items.", 4000)
                TriggerClientEvent("vorp_hunting:unlock", _source)
                return
            end

            local User = VorpCore.getUser(_source)
            local Character = User and User.getUsedCharacter
            if not Character then
                print("[ERROR] No character for source", _source)
                TriggerClientEvent("vorp:TipBottom", _source, "Failed to find character.", 4000)
                TriggerClientEvent("vorp_hunting:unlock", _source)
                return
            end

            local total = price * count
            Character.addCurrency(0, total)

            print(("[DEBUG] Sold %s x %s for $%s"):format(count, trimmedItem, total))
            TriggerClientEvent("vorp:TipBottom", _source,
                ("Sold %sx %s for $%s"):format(count, trimmedItem, total), 4000)
            TriggerClientEvent("vorp_hunting:unlock", _source)
        end)
    end, trimmedItem)
end)