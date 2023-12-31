require "grpc"
require "json"

# def traverse_dir(file_path)
#   if File.directory? file_path
#     Dir.foreach(file_path){|file| traverse_dir(file_path+"/"+file) if file!="." and file!=".." }
#   else
#     load file_path if file_path.to_s.match(/\.rb$/)
#   end
# end

# PWD = File.expand_path("..", __FILE__)

# # puts PWD

# traverse_dir(PWD+'/lib/entity/stream_message_code_pb.rb')
# traverse_dir(PWD+'/lib/entity/result_pb.rb')
# traverse_dir(PWD+'/lib/entity/stream_message_pb.rb')
# traverse_dir(PWD+'/lib/entity/stream_message_data_task_pb.rb')
# traverse_dir(PWD+'/lib/client')


def main
  host = ENV["CRAWLAB_GRPC_ADDRESS_HOST"]
  port = ENV["CRAWLAB_GRPC_ADDRESS_PORT"]
  address = ENV["CRAWLAB_GRPC_ADDRESS"]
  if address==nil || address == ""
    address = "localhost:9666"
  end  

  auth = "Crawlab2021!"

  client = TaskServiceClient.new(address,auth)

  sub_client = client.subscribe

  task_id = ENV["CRAWLAB_TASK_ID"]
  if task_id == nil || task_id == ""
    task_id = "6486e256fa1cb07a47c09adf"
  end
  item = {"hello": "world","_tid":task_id}
  item = Grpc::Result.new({"_tid":task_id,"name":"lala","age":"12"})

  data = Grpc::StreamMessageDataTask.new()
  # puts item

  data.task_id = task_id
  data.data.push(item)

  puts data
  msg = Grpc::StreamMessage.new(code:3,data:data.to_json)
  puts msg
  sub_client.Send([msg])

end

main
