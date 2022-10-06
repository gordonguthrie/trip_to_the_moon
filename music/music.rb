#  __  __         _
# |  \/  |_  _ __(_)__
# | |\/| | || (_-< / _|
# |_|  |_|\_,_/__/_\__|

load_synthdefs "/Users/gordonguthrie/.synthdefs"

# run_file("/Users/gordonguthrie/Dev/rip_to_the_moon/code/kits/drumkit.rb")
run_file("/Users/gordonguthrie/Dev//trip_to_the_moon/code/utilities/library.rb")

# sort out libraries and stuff
run_file("/Users/gordonguthrie/Dev/sonic-pi/libraries/bag_of_randoms.rb")
run_file("/Users/gordonguthrie/Dev/sonic-pi/libraries/tab.rb")

# use_debug = false

$bpm = 120
$randoms = bag_of_randoms(1024)

$swing_time = 0.2

$beats = (ring, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
$bars  = (ring, 1, 2, 3, 4, 5, 6, 7, 8)

$ghost  = -> { rrand(0.2, 0.3) }
$normal = -> { rrand(0.4, 0.6) }
$accent = -> { rrand(0.8, 0.9) }

$trace = false

#  ___                    _
# / __| __ ___ _ _  ___  / |
# \__ \/ _/ -_) ' \/ -_) | |
# |___/\__\___|_||_\___| |_|


#  ___                    ___
# / __| __ ___ _ _  ___  |_  )
# \__ \/ _/ -_) ' \/ -_)  / /
# |___/\__\___|_||_\___| /___|

#  ___                    ____
# / __| __ ___ _ _  ___  |__ /
# \__ \/ _/ -_) ' \/ -_)  |_ \
# |___/\__\___|_||_\___| |___/

#  ___                    _ _
# / __| __ ___ _ _  ___  | | |
# \__ \/ _/ -_) ' \/ -_) |_  _|
# |___/\__\___|_||_\___|   |_|

#  ___                    ___
# / __| __ ___ _ _  ___  | __|
# \__ \/ _/ -_) ' \/ -_) |__ \
# |___/\__\___|_||_\___| |___/

rkick1 = tabb(["1000","0010","1000","0010"])
rsnare1    = tabb(["0000","1000","0000","1000"])

#  ___                     __
# / __| __ ___ _ _  ___   / /
# \__ \/ _/ -_) ' \/ -_) / _ \
# |___/\__\___|_||_\___| \___/

#  ___                    ____
# / __| __ ___ _ _  ___  |__  |
# \__ \/ _/ -_) ' \/ -_)   / /
# |___/\__\___|_||_\___|  /_/

#  ___                    ___
# / __| __ ___ _ _  ___  ( _ )
# \__ \/ _/ -_) ' \/ -_) / _ \
# |___/\__\___|_||_\___| \___/

#  ___                    ___
# / __| __ ___ _ _  ___  / _ \
# \__ \/ _/ -_) ' \/ -_) \_, /
# |___/\__\___|_||_\___|  /_/

#  ___                    _  __
# / __| __ ___ _ _  ___  / |/  \
# \__ \/ _/ -_) ' \/ -_) | | () |
# |___/\__\___|_||_\___| |_|\__/

#  ___                    _ _
# / __| __ ___ _ _  ___  / / |
# \__ \/ _/ -_) ' \/ -_) | | |
# |___/\__\___|_||_\___| |_|_|

#  ___                    _ ___
# / __| __ ___ _ _  ___  / |_  )
# \__ \/ _/ -_) ' \/ -_) | |/ /
# |___/\__\___|_||_\___| |_/___|

#  ___                    _ ____
# / __| __ ___ _ _  ___  / |__ /
# \__ \/ _/ -_) ' \/ -_) | ||_ \
# |___/\__\___|_||_\___| |_|___/

#  ___                    _ _ _
# / __| __ ___ _ _  ___  / | | |
# \__ \/ _/ -_) ' \/ -_) | |_  _|
# |___/\__\___|_||_\___| |_| |_|

#  ___     _     _
# | _ \___(_)_ _| |_ ___ _ _ ___
# |  _/ _ \ | ' \  _/ -_) '_(_-<
# |_| \___/_|_||_\__\___|_| /__/


$rkick = rkick1
$rsnare = rsnare1

live_loop :metronome do
  sleep 8
end
