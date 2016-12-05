#!/bin/env ruby
# encoding: utf-8

class ActionNotify

  include Action

  def initialize q = nil

    super

    @name = "Notify"
    @docs = "Notify a distant instance."

  end

  def act q = nil
    
    if !q.include?(" ") then return "Bad request." end
    if !q.split(" ").first.include?(":") then return "Badly formatted domain:name." end
    
    domain,name = q.split(" ").first.split(":")
    parameters = q.split(" ").last.split(",")
    
    return "Notifying - domain:#{domain} name:#{name} parameters:#{parameters}"

  end

end