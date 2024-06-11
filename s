def sort_with_empty_space(nums):
    n = len(nums)
    operations = 0
    empty_pos = nums.index(0)  # Find the index of the empty space (0)
    
    # Place each number in its correct position
    for i in range(n):
        while nums[i] != i:
            nums[empty_pos], nums[nums[empty_pos]] = nums[nums[empty_pos]], nums[empty_pos]
            empty_pos = nums.index(0)  # Update the index of the empty space
            operations += 1
    
    # Now the array is sorted but we need the empty space at the beginning or end
    if empty_pos != 0:
        nums[empty_pos], nums[0] = nums[0], nums[empty_pos]
        operations += 1
    
    return operations

# Example usage:
nums = [4, 2, 0, 3, 1]
print(sort_with_empty_space(nums))  # Output: 4 (or any other minimum operations count)
