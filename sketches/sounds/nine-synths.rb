define :tone_loop do |name, tones, synth, tone_attack, tone_release, tone_sleep|
  live_loop name do
    use_synth synth
    play choose(tones), attack: tone_attack, release: tone_release
    sleep tone_sleep
  end
end

with_fx :reverb, mix: 0.8, room: 0.9 do
  tone_loop 'c_tones_hoover', chord(:C3, :major), :hoover, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'c_tones_hollow', chord(:C3, :major), :hollow, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'c_tones_sine', chord(:C3, :major), :sine, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'g_tones_hoover', chord(:G3, :major), :hoover, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'g_tones_hollow', chord(:G3, :major), :hollow, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'g_tones_sin', chord(:G3, :major), :sine, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 30)
  tone_loop 'c_tones_high', chord(:C4, :major), :hollow, rrand_i(4, 10), rrand_i(4, 10), rrand_i(20, 20)
  tone_loop 'c_tone_low', chord(:C4, :major), :hoover, rrand_i(8, 16), rrand_i(8, 14), rrand_i(20, 40)
  tone_loop 'p_noise', chord(:C4, :major), :pnoise, rrand_i(4, 10), rrand_i(4, 10), rrand_i(5, 20)
end
