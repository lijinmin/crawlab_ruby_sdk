# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/task.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("models/task.proto", :syntax => :proto3) do
    add_message "grpc.Task" do
      optional :_id, :string, 1
      optional :spider_id, :string, 2
      optional :status, :string, 5
      optional :node_id, :string, 6
      optional :cmd, :string, 8
      optional :param, :string, 9
      optional :error, :string, 10
      optional :pid, :int32, 16
      optional :run_type, :string, 17
      optional :schedule_id, :string, 18
      optional :type, :string, 19
    end
  end
end

module Grpc
  Task = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grpc.Task").msgclass
end
