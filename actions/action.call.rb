#!/bin/env ruby
# encoding: utf-8

class ActionCall

  include Action

  def initialize q = nil

    super

    @name = "Call"
    @docs = "Contact a distant instance."

  end

  def act q = nil
    
    if !q.include?(" ") then return "Bad request." end
    if !q.split(" ").first.include?(":") then return "Badly formatted domain:name." end
    
    domain,name = q.split(" ").first.split(":")
    requests = q.split(" ").last.split(",")
    
    return "Calling - domain:#{domain} name:#{name} requests:#{requests}"

  end

end