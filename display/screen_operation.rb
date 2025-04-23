def print_default(message, clear_screen=false, use_timer=false, timer=5)
  puts message
  sleep(timer) if use_timer
  system("clear") if clear_screen
end

def print_green(message, clear_screen=false, use_timer=false, timer=5)
  puts green(message)
  sleep(timer) if use_timer
  system("clear") if clear_screen
end

def green(message)
  "\e[32m#{message}\e[0m"
end

def print_yellow(message, clear_screen=false, use_timer=false, timer=5)
  puts yellow(message)
  sleep(timer) if use_timer
  system("clear") if clear_screen
end

def yellow(message)
  "\e[33m#{message}\e[0m"
end

def print_red(message, clear_screen=false, use_timer=false, timer=5)
  puts red(message)
  sleep(timer) if use_timer
  system("clear") if clear_screen
end

def red(message)
  "\e[31m#{message}\e[0m"
end


def print_blue(message, clear_screen=false, use_timer=false, timer=5)
  puts blue(message)
  sleep(timer) if use_timer
  system("clear") if clear_screen
end

def blue(message)
  "\e[34m#{message}\e[0m"
end

def clear_screen
  system("clear")
end
