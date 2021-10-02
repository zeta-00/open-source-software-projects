function bubble_sort(array)
{
    // bubble-sort algorithm:
    for (let i = 0; i < array.length; i++)
    {
        for (let k = 0; k < array.length - i - 1; k++)
	{
            if (array[k + 1] < array[k])
	    {
                [array[k + 1], array[k]] = [array[k], array[k + 1]];
            }
        }
    }
    
    return array;
    
}

// an array to test the bubble_sort algorithm:
array = [3, 8, 1, 12];
bubble_sort(array);
console.log(array);
