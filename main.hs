{- Завдання 1. Незмінне оновлення елементів списку (Haskell)
Напишіть функцію updateAt, яка повертає новий список, де елемент на
вказаній позиції замінено на нове значення. Вхідний список не змінюється. Якщо індекс виходить
за межі списку, повертається початковий список. -}

updateAt :: Int -> a -> [a] -> [a]
updateAt _ _ [] = []                     
updateAt i val xs
  | i < 0 = xs                           
  | i >= length xs = xs                  
  | otherwise = take i xs ++ [val] ++ drop (i + 1) xs

{-Завдання 4. Створення оновленої копії запису (Haskell)
Створіть тип Person, що містить ім’я та вік. Реалізуйте функцію incrementAge,
яка повертає новий екземпляр з віком, збільшеним на 1. Початковий запис не змінюється.
data Person = Person { name :: String, age :: Int } deriving Show
incrementAge :: Person -> Person -}

data Person = Person { name :: String, age :: Int } deriving Show
incrementAge :: Person -> Person
incrementAge p = p { age = age p + 1 }

{-Завдання 6. Видалення елемента з незмінного списку (Haskell)
Напишіть функцію removeAt, яка повертає новий список без елемента за заданим індексом.
Якщо індекс виходить за межі, повертається початковий список.
removeAt :: Int -> [a] -> [a] -}

removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt i xs
  | i < 0 = xs
  | i >= length xs = xs
  | otherwise = take i xs ++ drop (i + 1) xs

main :: IO ()
main = do
    putStrLn "=== Завдання 1: updateAt ==="
    let list1 = [10, 20, 30]
    print list1
    print (updateAt 1 99 list1)   -- [10,99,30]
    print (updateAt 0 42 [])      -- []
    print (updateAt 5 7 [1,2,3])  -- [1,2,3]

    putStrLn "\n=== Завдання 4: incrementAge ==="
    let p = Person "Anna" 25
    print p
    print (incrementAge p)        -- Person "Anna" 26
    print p                       

    putStrLn "\n=== Завдання 6: removeAt ==="
    let list2 = [10, 20, 30]
    print list2
    print (removeAt 1 list2)      -- [10,30]
    print (removeAt 5 [1,2,3])    -- [1,2,3]
