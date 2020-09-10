Delta looks best if your terminal application supports 24 bit colors. See https://gist.github.com/XVilka/8346728. For example, on MacOS, iTerm2 supports 24-bit colors but Terminal.app does not.

If your terminal application does not support 24-bit color, delta will still work, by automatically choosing the closest color from those available. See the Colors section of the help output below.

If you're using tmux, it's worth checking that 24 bit color is working correctly. For example, run a color test script like this one, or one of the others listed here. If you do not see smooth color gradients, see the discussion at tmux#696.

https://github.com/alacritty/alacritty/issues/109#issuecomment-507026155

