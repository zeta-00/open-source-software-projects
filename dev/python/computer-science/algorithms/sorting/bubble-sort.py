def bubble_sort(list):
    for iter_item in range(len(list)-1, 0, -1):
        for idA in range(iter_item):
            if list[idA] > list[idA + 1]:
                temporary_item = list[idA]
                list[idA] = list[idA + 1]
                list[idA + 1] = temporary_item

list = [8, 4, 2, 3]
bubble_sort(list)
print(list)
