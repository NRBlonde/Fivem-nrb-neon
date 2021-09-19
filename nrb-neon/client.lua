ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

local display = false

RegisterCommand("neon", function(source, args)
    SetDisplay(not display)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

RegisterNUICallback('close', function()
  SetNuiFocus(false, false)
end)

RegisterNUICallback('Neonsol', function()
    SetVehicleNeonLightEnabled(vehicle, 0, true)
end)

RegisterNUICallback('Neonsag', function()
    SetVehicleNeonLightEnabled(vehicle, 1, true)
end)

RegisterNUICallback('Neonon', function()
    SetVehicleNeonLightEnabled(vehicle, 2, true)
end)

RegisterNUICallback('Neonarka', function()
    SetVehicleNeonLightEnabled(vehicle, 3, true)
end)

RegisterNUICallback('Neonhepsiac', function()
    SetVehicleNeonLightEnabled(vehicle, 0, true)
    SetVehicleNeonLightEnabled(vehicle, 1, true)
    SetVehicleNeonLightEnabled(vehicle, 2, true)
    SetVehicleNeonLightEnabled(vehicle, 3, true)
end)

RegisterNUICallback('Neonhepsikapat', function()
    SetVehicleNeonLightEnabled(vehicle, 0, false)
    SetVehicleNeonLightEnabled(vehicle, 1, false)
    SetVehicleNeonLightEnabled(vehicle, 2, false)
    SetVehicleNeonLightEnabled(vehicle, 3, false)
end)

RegisterNUICallback('Neonkirmizi', function()
    SetVehicleNeonLightsColour(vehicle, 255, 1, 1)
end)

RegisterNUICallback('Neonsari', function()
    SetVehicleNeonLightsColour(vehicle, 255, 255, 0)
end)

RegisterNUICallback('Neonyesil', function()
    SetVehicleNeonLightsColour(vehicle, 0, 255, 0)
end)

RegisterNUICallback('Neonturuncu', function()
    SetVehicleNeonLightsColour(vehicle, 255, 62, 0)
end)

RegisterNUICallback('Neonpembe', function()
    SetVehicleNeonLightsColour(vehicle, 255, 5, 190)
end)

RegisterNUICallback('Neonmor', function()
    SetVehicleNeonLightsColour(vehicle, 35, 1, 255)
end)