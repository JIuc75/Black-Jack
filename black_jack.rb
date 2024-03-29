# frozen_string_literal: true

require_relative 'card'
require_relative 'deck'
require_relative 'player'
require_relative 'hand'
require_relative 'game'
require_relative 'interface'

interface = Interface.new
Game.new(interface)
