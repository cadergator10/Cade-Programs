--[[This is an API that should allow you to "have multiple banks" persay in the same world.
Every card has a serialized table with an uncrypted modem port for the bank server (should be labeled ["bankrouting"]) and a crypted account routing number(or whatever is required to know it's your account)
Route purchases through this]]
local component = require("component")
local event = require("event")
local modem = component.modem
local ser = require ("serialization")
local term = require("term")
local io = require("io")
local gpu = component.gpu
local thread = require("thread")

local bankqueue = {} --Bank routing informations remembered

local bankapi = {}

function request(card, ...) --Sends a request as well as extra data needed in the ... area
    local data = ser.unserialize(card)
    if bankqueue[card.bankrouting] == nil then

    else

    end
end

return bankapi