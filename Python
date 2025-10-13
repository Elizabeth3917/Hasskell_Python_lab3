#Завдання 2. Незмінне оновлення словника (Python)
#Напишіть функцію update_dict(original, key, value), яка повертає
#нову копію словника з оновленим значенням за ключем. Початковий словник не змінюється.
#Функціональний стиль Python:
#def update_dict(original: dict, key, value) -> dict:
#   ...

def update_dict(original: dict, key, value) -> dict:
    return {**original, key: value}

#Завдання 3. Незмінне додавання до кортежу (Python)
#Напишіть функцію append_tuple(tpl, item), яка повертає новий
#кортеж з доданим елементом в кінець. Вхідний кортеж не змінюється.
#def append_tuple(tpl: tuple, item) -> tuple:
#    ... 

def append_tuple(tpl: tuple, item) -> tuple:
    return tpl + (item,)

#Завдання 5. Імітація push для списку з незмінністю (Python)
#Напишіть функцію push(stack, item), яка імітує операцію “додавання в стек”,
#повертаючи нову копію списку з новим елементом на початку. Початковий список (стек) не змінюється.
#def push(stack: list, item) -> list:
#    ... 

def push(stack: list, item) -> list:
    return [item] + stack

def main():
    print("=== Завдання 2: update_dict ===")
    d1 = {'a': 1, 'b': 2}
    print("Початковий словник:", d1)
    d2 = update_dict(d1, 'b', 99)
    print("Новий словник:", d2)
    print("Перевірка незмінності:", d1)  # d1 не змінено

    print("\n=== Завдання 3: append_tuple ===")
    tpl1 = (1, 2, 3)
    print("Початковий кортеж:", tpl1)
    tpl2 = append_tuple(tpl1, 4)
    print("Новий кортеж:", tpl2)
    tpl3 = append_tuple((), 99)
    print("Приклад з порожнім кортежем:", tpl3)

    print("\n=== Завдання 5: push ===")
    s1 = [3, 2, 1]
    print("Початковий стек:", s1)
    s2 = push(s1, 4)
    print("Новий стек після push(4):", s2)
    print("Перевірка незмінності:", s1)


# === Точка входу ===
if __name__ == "__main__":
    main()










