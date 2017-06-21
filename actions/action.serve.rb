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
    
    load_folder("#{@host.path}/objects/*")

    ro = Rotonde.new
    
    ro.name = "Devine Lu Linvega"
    ro.location = "Huahine"
    ro.avatar = "http://wiki.xxiivv.com/public.oscean/media/brand/logo.devine.lu.linvega.png"
    ro.color = "#72dec2"

    ro.feed = logs
    ro.portal.push("rotonde.monochromatic.co")

    return ro.to_json
    
  end

  def logs

    a = []
    count = 0
    Memory_Array.new("horaire","#{@host.path}/../vessel.oscean").to_a.each do |log|
      if count > 30 then break end
      topic = log["TERM"]
      text = log["TEXT"]
      media = log["PICT"].to_i

      entry = {}
      entry[:date] = log["DATE"]

      if text then entry[:text] = text end
      if media > 0 then entry[:media] = "http://wiki.xxiivv.com/public.oscean/media/diary/#{media}.jpg" end
      if topic.to_s != "" then entry[:url] = "http://wiki.xxiivv.com/#{topic}}" end

      a.push(entry)
      count += 1 
    end
    return a

  end

end