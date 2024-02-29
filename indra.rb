require 'socket' 


TIMING_p = 2
def Checking(port)
    remote_add  = Socket.sockaddr_in(port, 'www.example.com')
    begin
        socket.connect_nonblock(remote_addr)
    rescue Errno:EINPROGRESS
    end

    _, sockets, _ = IO.select(nil [socket], nil, TIMEOUT)

    if sockets
        p "| port: #{port} is open "
    else
    end
end

# > port listing .
lstport = [21,22,23,25,80,8080,443,441]
threads = []
lstport.each { |i| threads << Thread.new { scan_port(i) }}
threads.each(&:join)


