
import Foundation

//Создать функцию, которая рассчитает количество символов, пробелов, знаков препинания(. , : ") и количество букв в одну строку. Например:
//В тексте (какой-то текст) -> 25 символов, 3 пробела, 2 знака препинания и 20 букв.



var slova: String = "about, through, just, do, name, breaking, bad, swift, happy, clinique, for, men, ghost, call, of , duty, shift, control, space, escape"
var probel = ""
var words = ""
var znak = ""
var symbols = ""
func curltai () {
    for i in slova{
        if i == " "{
        probel += String(i)
        }
        if i != "," && i != " " && i != "."{
        znak += String(i)
        }
        if i != ","{
        symbols += String(i)
        }
    }
print("В переменной slova (\(slova)) - \(probel.count) пробелов","\(znak.count) букв","\(symbols.count) символов")
    
}
    curltai()
    print(words)

//Создать функцию, которая сможет угадать число. Вы вводите например число 20, а цикл подбирая рандомные значения пытается угадать какое число вы загадали. В конце работы функции выдать “Ваше число (ваше число) было угадано за (сколько раз) раз”

print("Выберите число до 1000")
var numb = readLine()!

var popytki = 0

for _ in 0...1000{
    popytki += 1
    var random = Int.random(in: 1...1000)
    if Int(numb) == Int(random){
        print("ваше число \(random) угадано за \(popytki) попыток")
    }
}

