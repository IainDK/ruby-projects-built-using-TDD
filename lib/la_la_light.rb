class LaLaLight

def oscar_mishap(string)
  final_string(string)
end

def logic_string(string)
  string.scan(/([^aeiouy]*[aeiouy]+)(.*)/i)
end

def split_string(string)
  logic_string(string).first[0]
end

private

def final_string(string)
  split_string(string) + " " + split_string(string) + " " + string
end

end
