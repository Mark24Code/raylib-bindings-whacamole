# Yet another raylib wrapper for Ruby
#
# * https://github.com/vaiorabbit/raylib-bindings
#
# [NOTICE] Autogenerated. Do not edit.

require 'ffi'

module Raylib
  extend FFI::Library

  # Define/Macro


  # Typedef

  typedef :int, :CameraProjection
  typedef :int, :CameraMode

  # Function

  def self.setup_rcamera_symbols(method_naming: :original)
    entries = [

      # @!method GetCameraForward(camera)
      #   GetCameraForward
      #   @param camera [Camera *]
      #   @return [Vector3]
      [:GetCameraForward, :GetCameraForward, [:pointer], Vector3.by_value],

      # @!method GetCameraUp(camera)
      #   GetCameraUp
      #   @param camera [Camera *]
      #   @return [Vector3]
      [:GetCameraUp, :GetCameraUp, [:pointer], Vector3.by_value],

      # @!method GetCameraRight(camera)
      #   GetCameraRight
      #   @param camera [Camera *]
      #   @return [Vector3]
      [:GetCameraRight, :GetCameraRight, [:pointer], Vector3.by_value],

      # @!method CameraMoveForward(camera, distance, moveInWorldPlane)
      #   CameraMoveForward
      #   @param camera [Camera *]
      #   @param distance [float]
      #   @param moveInWorldPlane [bool]
      #   @return [void]
      [:CameraMoveForward, :CameraMoveForward, [:pointer, :float, :bool], :void],

      # @!method CameraMoveUp(camera, distance)
      #   CameraMoveUp
      #   @param camera [Camera *]
      #   @param distance [float]
      #   @return [void]
      [:CameraMoveUp, :CameraMoveUp, [:pointer, :float], :void],

      # @!method CameraMoveRight(camera, distance, moveInWorldPlane)
      #   CameraMoveRight
      #   @param camera [Camera *]
      #   @param distance [float]
      #   @param moveInWorldPlane [bool]
      #   @return [void]
      [:CameraMoveRight, :CameraMoveRight, [:pointer, :float, :bool], :void],

      # @!method CameraMoveToTarget(camera, delta)
      #   CameraMoveToTarget
      #   @param camera [Camera *]
      #   @param delta [float]
      #   @return [void]
      [:CameraMoveToTarget, :CameraMoveToTarget, [:pointer, :float], :void],

      # @!method CameraYaw(camera, angle, rotateAroundTarget)
      #   CameraYaw
      #   @param camera [Camera *]
      #   @param angle [float]
      #   @param rotateAroundTarget [bool]
      #   @return [void]
      [:CameraYaw, :CameraYaw, [:pointer, :float, :bool], :void],

      # @!method CameraPitch(camera, angle, lockView, rotateAroundTarget, rotateUp)
      #   CameraPitch
      #   @param camera [Camera *]
      #   @param angle [float]
      #   @param lockView [bool]
      #   @param rotateAroundTarget [bool]
      #   @param rotateUp [bool]
      #   @return [void]
      [:CameraPitch, :CameraPitch, [:pointer, :float, :bool, :bool, :bool], :void],

      # @!method CameraRoll(camera, angle)
      #   CameraRoll
      #   @param camera [Camera *]
      #   @param angle [float]
      #   @return [void]
      [:CameraRoll, :CameraRoll, [:pointer, :float], :void],

      # @!method GetCameraViewMatrix(camera)
      #   GetCameraViewMatrix
      #   @param camera [Camera *]
      #   @return [Matrix]
      [:GetCameraViewMatrix, :GetCameraViewMatrix, [:pointer], Matrix.by_value],

      # @!method GetCameraProjectionMatrix(camera, aspect)
      #   GetCameraProjectionMatrix
      #   @param camera [Camera*]
      #   @param aspect [float]
      #   @return [Matrix]
      [:GetCameraProjectionMatrix, :GetCameraProjectionMatrix, [:pointer, :float], Matrix.by_value],
    ]
    entries.each do |entry|
      api_name = if method_naming == :snake_case
                   snake_case_name = entry[0].to_s.gsub(/([A-Z]+)([A-Z0-9][a-z])/, '\1_\2').gsub(/([a-z\d])([A-Z0-9])/, '\1_\2').downcase
                   snake_case_name.gsub!('vector_3', 'vector3_') if snake_case_name.include?('vector_3')
                   snake_case_name.gsub!('vector_2', 'vector2_') if snake_case_name.include?('vector_2')
                   snake_case_name.chop! if snake_case_name.end_with?('_')
                   snake_case_name.to_sym
                 else
                   entry[0]
                 end
      attach_function api_name, entry[1], entry[2], entry[3]
    rescue FFI::NotFoundError => e
      warn "[Warning] Failed to import #{entry[0]} (#{e})."
    end
  end
end
