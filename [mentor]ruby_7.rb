array = [0, 9, 2, 7, 4, 5, 6, 3, 8, 1]

puts 1
p array.sort!
puts "出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]"
#破壊的メソッドとはもとのオブジェクトを戻り値にして変更してしまうメソッド
#.sort

puts 2
p array.insert(-1, 10)
puts "出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
#配列.push(追加する要素)
#配列.insert(挿入位置、挿入する要素)挿入位置は0番から始まる
#マイナス値を入れると末尾からの位置になる
#配列.unshift(先頭に挿入する要素)

puts 3
array.delete(10)
p array
puts "出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]"
#配列.delete(削除する要素)=引数に当てはまるもの全てを削除
#配列.delete_at(削除位置)
#配列.shift(削除する要素の数)=配列の先頭から要素を消す
#配列.slice(削除開始位置, 削除する個数)もしくは、(削除範囲(1..3))
#slice!もある

puts 4
array.shift()
p array
puts "出力 -> [1, 2, 3, 4, 5, 6, 7, 8, 9]"

puts 5
array.unshift(0)
p array
puts "出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]"

puts 6
arrays = array.each_slice(2).map{|n| n.last}
p arrays
puts "出力 -> [1, 3, 5, 7, 9]"
#.to_a = 配列化
#.each_slice(一分割の数)= 要素を分割できる
#array.each_slice(2).map(|n| n.first)で二個ずつの要素に分割した要素郡の前を取る
#.map(&:first)で省略も可能
#.firstと.lastは引数で前から何個の要素を取るかを指定出来る
#削除等の処理の行をputsすると削除される要素（処理されている要素）表示される
#オブジェクト.step(limit, stepno) do |valiable| = 一度処理する毎に変数にstepnoの値を加算
#それをlimitになるまで行う
puts 7
even_numbers = array.select{|n|n.even?}
p even_numbers
puts "出力 -> [0, 2, 4, 6, 8]"
#.selectは条件式で真の戻り値を返す要素のみで配列を組む　select == find_all
#.rejectはselectの逆で偽なる要素からなる
puts 8
p even_numbers.reverse
puts "出力 -> [8, 6, 4, 2, 0]"

#memo
#ruby繰り返し構文
#.each{|n| 処理} = ブロックに繰り返し要素を渡す
#.delete_if{|n| n.odd?} = 条件に一致する要素を削除する
#.map{|n| 処理} = ブロックが返す戻り値で配列を返す
#.find = ブロックが真となる最初の要素を取る　==detect
#.inject(引数){|result, n| 処理}　一回目のみresultはinjectの引数を取り、以降は前回のブロックの返値値を取る　==reduce

