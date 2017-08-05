CONFIG = require 'configurations'
-- Dependencies
Collection = require 'bower_components.Lua-Collections.collections'
beholder = require "bower_components.beholder.beholder"
class = require 'bower_components.middleclass.middleclass'
serpent = require 'bower_components.serpent.src.serpent'
termColors = require 'bower_components.lua-term.term.colors'

-- Local Helpers
helpers = require('src.libraries.helpers')
dd = helpers.dd
wrapWithColor = helpers.wrapWithColor

-- Assertions
assertions = require('src.libraries.assertions')
trueOrNil = assertions.trueOrNil
assertHasProperty = assertions.assertHasProperty
assertInstanceOf = assertions.assertInstanceOf

-- Base Classes
Base = require('src.base.index')

-- Global Eventer
GlobalEventer = require('src.game.global_eventer')
Events = require('src.game.events.index')