def bouncingBall(h, bounce, window)
    x = 0
    if window >= h || h <= 0 || bounce <= 0 || bounce >= 1
      return -1
    else
      while h * bounce > window
        x += 2
        h = h * bounce
      end
      return x + 1
    end
end