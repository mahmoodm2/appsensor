#
# 
#
# Generated by <a href="http://enunciate.webcohesion.com">Enunciate</a>.
#
require 'json'

# adding necessary json serialization methods to standard classes.
class Object
  def to_jaxb_json_hash
    return self
  end
  def self.from_json o
    return o
  end
end

class String
  def self.from_json o
    return o
  end
end

class Boolean
  def self.from_json o
    return o
  end
end

class Numeric
  def self.from_json o
    return o
  end
end

class Time
  #json time is represented as number of milliseconds since epoch
  def to_jaxb_json_hash
    return (to_i * 1000) + (usec / 1000)
  end
  def self.from_json o
    if o.nil?
      return nil
    else
      return Time.at(o / 1000, (o % 1000) * 1000)
    end
  end
end

class Array
  def to_jaxb_json_hash
    a = Array.new
    each { | _item | a.push _item.to_jaxb_json_hash }
    return a
  end
end

class Hash
  def to_jaxb_json_hash
    h = Hash.new
    each { | _key, _value | h[_key.to_jaxb_json_hash] = _value.to_jaxb_json_hash }
    return h
  end
end


module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Attack 

    # (no documentation provided)
    attr_accessor :timestamp
    # (no documentation provided)
    attr_accessor :metadata
    # (no documentation provided)
    attr_accessor :detectionSystem
    # (no documentation provided)
    attr_accessor :detectionPoint
    # (no documentation provided)
    attr_accessor :resource
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :user

    # the json hash for this Attack
    def to_jaxb_json_hash
      _h = {}
      _h['timestamp'] = timestamp.to_jaxb_json_hash unless timestamp.nil?
      if !metadata.nil?
        _ha = Array.new
        metadata.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['metadata'] = _ha
      end
      _h['detectionSystem'] = detectionSystem.to_jaxb_json_hash unless detectionSystem.nil?
      _h['detectionPoint'] = detectionPoint.to_jaxb_json_hash unless detectionPoint.nil?
      _h['resource'] = resource.to_jaxb_json_hash unless resource.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      _h['user'] = user.to_jaxb_json_hash unless user.nil?
      return _h
    end

    # the json (string form) for this Attack
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Attack with a json hash
    def init_jaxb_json_hash(_o)
      @timestamp = String.from_json(_o['timestamp']) unless _o['timestamp'].nil?
      if !_o['metadata'].nil?
        @metadata = Array.new
        _oa = _o['metadata']
        _oa.each { | _item | @metadata.push Org::Owasp::Appsensor::Core::KeyValuePair.from_json(_item) }
      end
      @detectionSystem = Org::Owasp::Appsensor::Core::DetectionSystem.from_json(_o['detectionSystem']) unless _o['detectionSystem'].nil?
      @detectionPoint = Org::Owasp::Appsensor::Core::DetectionPoint.from_json(_o['detectionPoint']) unless _o['detectionPoint'].nil?
      @resource = Org::Owasp::Appsensor::Core::Resource.from_json(_o['resource']) unless _o['resource'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
      @user = Org::Owasp::Appsensor::Core::User.from_json(_o['user']) unless _o['user'].nil?
    end

    # constructs a Attack from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Event 

    # (no documentation provided)
    attr_accessor :resource
    # (no documentation provided)
    attr_accessor :user
    # (no documentation provided)
    attr_accessor :detectionPoint
    # (no documentation provided)
    attr_accessor :detectionSystem
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :metadata
    # (no documentation provided)
    attr_accessor :timestamp

    # the json hash for this Event
    def to_jaxb_json_hash
      _h = {}
      _h['resource'] = resource.to_jaxb_json_hash unless resource.nil?
      _h['user'] = user.to_jaxb_json_hash unless user.nil?
      _h['detectionPoint'] = detectionPoint.to_jaxb_json_hash unless detectionPoint.nil?
      _h['detectionSystem'] = detectionSystem.to_jaxb_json_hash unless detectionSystem.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      if !metadata.nil?
        _ha = Array.new
        metadata.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['metadata'] = _ha
      end
      _h['timestamp'] = timestamp.to_jaxb_json_hash unless timestamp.nil?
      return _h
    end

    # the json (string form) for this Event
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Event with a json hash
    def init_jaxb_json_hash(_o)
      @resource = Org::Owasp::Appsensor::Core::Resource.from_json(_o['resource']) unless _o['resource'].nil?
      @user = Org::Owasp::Appsensor::Core::User.from_json(_o['user']) unless _o['user'].nil?
      @detectionPoint = Org::Owasp::Appsensor::Core::DetectionPoint.from_json(_o['detectionPoint']) unless _o['detectionPoint'].nil?
      @detectionSystem = Org::Owasp::Appsensor::Core::DetectionSystem.from_json(_o['detectionSystem']) unless _o['detectionSystem'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
      if !_o['metadata'].nil?
        @metadata = Array.new
        _oa = _o['metadata']
        _oa.each { | _item | @metadata.push Org::Owasp::Appsensor::Core::KeyValuePair.from_json(_item) }
      end
      @timestamp = String.from_json(_o['timestamp']) unless _o['timestamp'].nil?
    end

    # constructs a Event from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Resource 

    # (no documentation provided)
    attr_accessor :location

    # the json hash for this Resource
    def to_jaxb_json_hash
      _h = {}
      _h['location'] = location.to_jaxb_json_hash unless location.nil?
      return _h
    end

    # the json (string form) for this Resource
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Resource with a json hash
    def init_jaxb_json_hash(_o)
      @location = String.from_json(_o['location']) unless _o['location'].nil?
    end

    # constructs a Resource from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class DetectionPoint 

    # (no documentation provided)
    attr_accessor :responses
    # (no documentation provided)
    attr_accessor :category
    # (no documentation provided)
    attr_accessor :threshold
    # (no documentation provided)
    attr_accessor :label
    # (no documentation provided)
    attr_accessor :responses
    # (no documentation provided)
    attr_accessor :threshold

    # the json hash for this DetectionPoint
    def to_jaxb_json_hash
      _h = {}
      if !responses.nil?
        _ha = Array.new
        responses.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['responses'] = _ha
      end
      _h['category'] = category.to_jaxb_json_hash unless category.nil?
      _h['threshold'] = threshold.to_jaxb_json_hash unless threshold.nil?
      _h['label'] = label.to_jaxb_json_hash unless label.nil?
      if !responses.nil?
        _ha = Array.new
        responses.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['responses'] = _ha
      end
      _h['threshold'] = threshold.to_jaxb_json_hash unless threshold.nil?
      return _h
    end

    # the json (string form) for this DetectionPoint
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this DetectionPoint with a json hash
    def init_jaxb_json_hash(_o)
      if !_o['responses'].nil?
        @responses = Array.new
        _oa = _o['responses']
        _oa.each { | _item | @responses.push Org::Owasp::Appsensor::Core::Response.from_json(_item) }
      end
      @category = String.from_json(_o['category']) unless _o['category'].nil?
      @threshold = Org::Owasp::Appsensor::Core::Threshold.from_json(_o['threshold']) unless _o['threshold'].nil?
      @label = String.from_json(_o['label']) unless _o['label'].nil?
      if !_o['responses'].nil?
        @responses = Array.new
        _oa = _o['responses']
        _oa.each { | _item | @responses.push Org::Owasp::Appsensor::Core::Response.from_json(_item) }
      end
      @threshold = Org::Owasp::Appsensor::Core::Threshold.from_json(_o['threshold']) unless _o['threshold'].nil?
    end

    # constructs a DetectionPoint from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class KeyValuePair 

    # (no documentation provided)
    attr_accessor :key
    # (no documentation provided)
    attr_accessor :value

    # the json hash for this KeyValuePair
    def to_jaxb_json_hash
      _h = {}
      _h['key'] = key.to_jaxb_json_hash unless key.nil?
      _h['value'] = value.to_jaxb_json_hash unless value.nil?
      return _h
    end

    # the json (string form) for this KeyValuePair
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this KeyValuePair with a json hash
    def init_jaxb_json_hash(_o)
      @key = String.from_json(_o['key']) unless _o['key'].nil?
      @value = String.from_json(_o['value']) unless _o['value'].nil?
    end

    # constructs a KeyValuePair from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

module Geolocation

  # (no documentation provided)
  class GeoLocation 

    # (no documentation provided)
    attr_accessor :longitude
    # (no documentation provided)
    attr_accessor :latitude

    # the json hash for this GeoLocation
    def to_jaxb_json_hash
      _h = {}
      _h['longitude'] = longitude.to_jaxb_json_hash unless longitude.nil?
      _h['latitude'] = latitude.to_jaxb_json_hash unless latitude.nil?
      return _h
    end

    # the json (string form) for this GeoLocation
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this GeoLocation with a json hash
    def init_jaxb_json_hash(_o)
      @longitude = Float.from_json(_o['longitude']) unless _o['longitude'].nil?
      @latitude = Float.from_json(_o['latitude']) unless _o['latitude'].nil?
    end

    # constructs a GeoLocation from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class IPAddress 

    # (no documentation provided)
    attr_accessor :address
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :geoLocation
    # (no documentation provided)
    attr_accessor :geoLocation

    # the json hash for this IPAddress
    def to_jaxb_json_hash
      _h = {}
      _h['address'] = address.to_jaxb_json_hash unless address.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      _h['geoLocation'] = geoLocation.to_jaxb_json_hash unless geoLocation.nil?
      _h['geoLocation'] = geoLocation.to_jaxb_json_hash unless geoLocation.nil?
      return _h
    end

    # the json (string form) for this IPAddress
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this IPAddress with a json hash
    def init_jaxb_json_hash(_o)
      @address = String.from_json(_o['address']) unless _o['address'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
      @geoLocation = Org::Owasp::Appsensor::Core::Geolocation::GeoLocation.from_json(_o['geoLocation']) unless _o['geoLocation'].nil?
      @geoLocation = Org::Owasp::Appsensor::Core::Geolocation::GeoLocation.from_json(_o['geoLocation']) unless _o['geoLocation'].nil?
    end

    # constructs a IPAddress from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Response 

    # (no documentation provided)
    attr_accessor :timestamp
    # (no documentation provided)
    attr_accessor :action
    # (no documentation provided)
    attr_accessor :detectionSystem
    # (no documentation provided)
    attr_accessor :user
    # (no documentation provided)
    attr_accessor :interval
    # (no documentation provided)
    attr_accessor :metadata
    # (no documentation provided)
    attr_accessor :active
    # (no documentation provided)
    attr_accessor :id

    # the json hash for this Response
    def to_jaxb_json_hash
      _h = {}
      _h['timestamp'] = timestamp.to_jaxb_json_hash unless timestamp.nil?
      _h['action'] = action.to_jaxb_json_hash unless action.nil?
      _h['detectionSystem'] = detectionSystem.to_jaxb_json_hash unless detectionSystem.nil?
      _h['user'] = user.to_jaxb_json_hash unless user.nil?
      _h['interval'] = interval.to_jaxb_json_hash unless interval.nil?
      if !metadata.nil?
        _ha = Array.new
        metadata.each { | _item | _ha.push _item.to_jaxb_json_hash }
        _h['metadata'] = _ha
      end
      _h['active'] = active.to_jaxb_json_hash unless active.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      return _h
    end

    # the json (string form) for this Response
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Response with a json hash
    def init_jaxb_json_hash(_o)
      @timestamp = String.from_json(_o['timestamp']) unless _o['timestamp'].nil?
      @action = String.from_json(_o['action']) unless _o['action'].nil?
      @detectionSystem = Org::Owasp::Appsensor::Core::DetectionSystem.from_json(_o['detectionSystem']) unless _o['detectionSystem'].nil?
      @user = Org::Owasp::Appsensor::Core::User.from_json(_o['user']) unless _o['user'].nil?
      @interval = Org::Owasp::Appsensor::Core::Interval.from_json(_o['interval']) unless _o['interval'].nil?
      if !_o['metadata'].nil?
        @metadata = Array.new
        _oa = _o['metadata']
        _oa.each { | _item | @metadata.push Org::Owasp::Appsensor::Core::KeyValuePair.from_json(_item) }
      end
      @active = Boolean.from_json(_o['active']) unless _o['active'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
    end

    # constructs a Response from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Threshold 

    # (no documentation provided)
    attr_accessor :interval
    # (no documentation provided)
    attr_accessor :count

    # the json hash for this Threshold
    def to_jaxb_json_hash
      _h = {}
      _h['interval'] = interval.to_jaxb_json_hash unless interval.nil?
      _h['count'] = count.to_jaxb_json_hash unless count.nil?
      return _h
    end

    # the json (string form) for this Threshold
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Threshold with a json hash
    def init_jaxb_json_hash(_o)
      @interval = Org::Owasp::Appsensor::Core::Interval.from_json(_o['interval']) unless _o['interval'].nil?
      @count = Fixnum.from_json(_o['count']) unless _o['count'].nil?
    end

    # constructs a Threshold from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class DetectionSystem 

    # (no documentation provided)
    attr_accessor :IPAddress
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :ipAddress
    # (no documentation provided)
    attr_accessor :detectionSystemId

    # the json hash for this DetectionSystem
    def to_jaxb_json_hash
      _h = {}
      _h['ipAddress'] = IPAddress.to_jaxb_json_hash unless IPAddress.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      _h['ipAddress'] = ipAddress.to_jaxb_json_hash unless ipAddress.nil?
      _h['detectionSystemId'] = detectionSystemId.to_jaxb_json_hash unless detectionSystemId.nil?
      return _h
    end

    # the json (string form) for this DetectionSystem
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this DetectionSystem with a json hash
    def init_jaxb_json_hash(_o)
      @IPAddress = Org::Owasp::Appsensor::Core::IPAddress.from_json(_o['ipAddress']) unless _o['ipAddress'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
      @ipAddress = Org::Owasp::Appsensor::Core::IPAddress.from_json(_o['ipAddress']) unless _o['ipAddress'].nil?
      @detectionSystemId = String.from_json(_o['detectionSystemId']) unless _o['detectionSystemId'].nil?
    end

    # constructs a DetectionSystem from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class User 

    # (no documentation provided)
    attr_accessor :IPAddress
    # (no documentation provided)
    attr_accessor :ipAddress
    # (no documentation provided)
    attr_accessor :id
    # (no documentation provided)
    attr_accessor :username

    # the json hash for this User
    def to_jaxb_json_hash
      _h = {}
      _h['ipAddress'] = IPAddress.to_jaxb_json_hash unless IPAddress.nil?
      _h['ipAddress'] = ipAddress.to_jaxb_json_hash unless ipAddress.nil?
      _h['id'] = id.to_jaxb_json_hash unless id.nil?
      _h['username'] = username.to_jaxb_json_hash unless username.nil?
      return _h
    end

    # the json (string form) for this User
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this User with a json hash
    def init_jaxb_json_hash(_o)
      @IPAddress = Org::Owasp::Appsensor::Core::IPAddress.from_json(_o['ipAddress']) unless _o['ipAddress'].nil?
      @ipAddress = Org::Owasp::Appsensor::Core::IPAddress.from_json(_o['ipAddress']) unless _o['ipAddress'].nil?
      @id = Fixnum.from_json(_o['id']) unless _o['id'].nil?
      @username = String.from_json(_o['username']) unless _o['username'].nil?
    end

    # constructs a User from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Org

module Owasp

module Appsensor

module Core

  # (no documentation provided)
  class Interval 

    # (no documentation provided)
    attr_accessor :duration
    # (no documentation provided)
    attr_accessor :unit

    # the json hash for this Interval
    def to_jaxb_json_hash
      _h = {}
      _h['duration'] = duration.to_jaxb_json_hash unless duration.nil?
      _h['unit'] = unit.to_jaxb_json_hash unless unit.nil?
      return _h
    end

    # the json (string form) for this Interval
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this Interval with a json hash
    def init_jaxb_json_hash(_o)
      @duration = Fixnum.from_json(_o['duration']) unless _o['duration'].nil?
      @unit = String.from_json(_o['unit']) unless _o['unit'].nil?
    end

    # constructs a Interval from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end