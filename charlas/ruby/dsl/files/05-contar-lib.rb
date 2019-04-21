
def method_missing(m, *args, &block)
  items = m.to_s.split('_')
  if items[0]=='contar'
    if items.count > 2
      send(:contar, items[1].to_i, items[2] )
    else
      send(:contar, items[1] )
    end
  end
end

def contar(*args)
  if args.count ==1 and args[0].class==String
    # Contar clásico (fruta)
    return contar_string_integer(args[0])
  elsif args.count ==1 and args[0].class==Array
    # Array dentro de un array
    return contar args[0]
  elsif args.count==2 and args[0].class==String and args[1].class==Integer
    # Contar clásico (fruta, hasta)
    return contar_string_integer(args[0], args[1])
  elsif args.count==2 and args[1].class==String and args[0].class==Integer
    # Contar clásico (hasta, fruta)
    return contar_string_integer(args[1], args[0])
  elsif args.count ==1 and args[0].class==Hash
    # Contar dentro de un Hash
    args[0].each_pair do |key,value|
      contar_string_integer(key.to_s, value)
    end
  elsif args.class == Array
    # Contar dentro de un Array de elementos
    g = args.group_by { |i| i } # Agrupamos los elementos comunes
    g.each_pair do |key,value|
      contar_string_integer(key, value.count)
    end
  else
    raise 'Error en el tipo del argumento'
  end
end

def contar_string_integer(fruta, hasta=1)
  f = String.new(fruta)
  h = hasta

  f[-1]='' if f[-1]=='s' # Limpiar plural
  (1..hasta).each do |i|
    puts "* #{f.capitalize} #{i}"
  end
  $total = total + hasta
end

def total
  return ($total || 0)
end
