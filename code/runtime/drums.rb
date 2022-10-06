#  ___
# |   \ _ _ _  _ _ __  ___
# | |) | '_| || | '  \(_-<
# |___/|_|  \_,_|_|_|_/__/

print("DRUMS RELOADED")

use_bpm $bpm

$KickAmp = 1.0
$SnareAmp = 1.0

with_fx(:reverb, mix: 0.3) do |r|
  with_fx(:echo,   mix: 0.25) do |e|
    with_fx(:compressor) do
      old_walk = 0

      live_loop(:beat1, sync: :metronome) do
        bars   = $bars
        beats  = $beats
        rkick  = $rkick
        rsnare = $rsnare
        8.times do
          trace("in beat1 loop")
          bar = bars.look(:bars) - 1
          beat = beats.look(:beats) - 1

          globalrandom1 = $randoms.tick
          globalrandom2 = $randoms.tick

          if rkick[beat]
            play_kicks($KickAmp)
          end
          if rsnare[beat]
            play_snare($SnareAmp)
          end
          old_walk = walking_sleep(old_walk, beat, "beat1")

          if beat == 15
            bars.tick(:bars)
          end

          beats.tick(:beats)
        end
      end
    end
  end
end
