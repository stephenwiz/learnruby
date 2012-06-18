;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

def prompt_user_inside_a_loop
  loop do
    $stdout.write('Say something: ')
    answer = $stdin.gets.chomp
    break if answer == 'quit'
    $stdout.puts("You said: #{answer}")
  end
end

if $0 == __FILE__
  prompt_user_inside_a_loop
end
