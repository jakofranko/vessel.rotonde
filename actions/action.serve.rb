#!/bin/env ruby
# encoding: utf-8

require 'json'

class ActionServe

  include Action

  def initialize q = nil

    super

    @name = "Serve"
    @docs = "Serve a distant instance."

  end

  def act q = nil
    
    rotondeFeed = {
      :profile => {
        :name => "Devine Lu Linvega",
        :location => "Huahine"
      },
      :feed => [
        {
          :date => "20170621-1", 
          :type => "reply",
          :ref => "rotonde.monochromatic.co#20170621-4",
          :text => "Nice work!"
        },
        {
          :date => "20170621", 
          :type => "media",
          :media => "http://wiki.xxiivv.com/public.oscean/media/diary/339.jpg",
          :text => "Worked on the Rotonde specs.",
          :url => "http://xxiivv.com/index.htm"
        }
      ],
      :portal => [
        "rotonde.monochromatic.co",
      ]
    }

    return rotondeFeed.to_json
    
  end

end