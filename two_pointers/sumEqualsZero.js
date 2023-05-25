// Write a function that takes a sorted array and returns the pair that sum is equal to 0. 
// Otherwise, return undefined.

function sumZero(arr){
	let left = 0;
	let right = arr.length - 1;
	while(left < right){
		let sum = arr[left] + arr[right];
		if(sum === 0){
			return [arr[left], arr[right]];
		} else if(sum > 0){
			right--;
		} else {
			left++;
		}
	}
}
