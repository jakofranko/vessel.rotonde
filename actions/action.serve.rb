#!/bin/env ruby
# encoding: utf-8

class ActionServe

  include Action

  def initialize q = nil

    super

    @name = "Serve"
    @docs = "Serve a distant instance."

  end

  def act q = nil
    
    return [20170621 => {:text => "Hello world"},20170620 => {:text => "First log"}].to_json
    
  end

end