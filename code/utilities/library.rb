define(:walking_sleep) do |old_walk, beat, source|
  walk = rdist(0.01, 0)
  slp = get_sleep(beat)
  sleep(slp + walk - old_walk)
  return walk
end

define(:get_sleep) do |beat|
  trace("in get_sleep")
  if (beat % 2) == 0
    slp = 0.5 + $swing_time
  else
    slp = 0.5 - $swing_time
  end

  return slp
end

define(:play_kicks) do |kickamp|
  trace("in play kicks")
  sinfreq = rdist(10, 70)
  glissf  = rdist(0, 0.9)
  att     = rdist(0, 0.01)
  a = ((rand < 0.8) ? $normal.call : $ghost.call)
  use_synth(:sc_kick)
  play(amp: a * kickamp, pan: 0.5, sinfreq: sinfreq, glissf: glissf, att: att)

end

define(:play_snare) do |snareamp|
  trace("in play snare")
  a = ((rand > 0.6) ? $ghost.call : $normal.call)
  use_synth(:sc_snare)
  play(amp: a * snareamp* rdist(0.1, 0.5), pan: 0.3)
end

define(:trace) do |msg|
  if $trace
    print(msg)
  end
end
