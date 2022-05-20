local modemPort = 250
local cryptKey = {7, 3, 2, 4, 9}
local component = require("component")
local event = require("event")
local modem = component.modem
local ser = require ("serialization")
local term = require("term")
local io = require("io")
local gpu = component.gpu
local thread = require("thread")
local version = "0.1"
local settings = {}
local accounts = {} --{{pin=1234,balance=12.00,routing=12345678}}
local payments = {["ir"]=1,["go"]=1.50,["di"]=10,["co"]=0.15} --Deposits