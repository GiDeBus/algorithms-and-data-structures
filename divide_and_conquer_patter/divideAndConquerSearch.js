

function search(arr, num) {
  let min = 0;
  let max = arr.length - 1;

  while(min <= max) {
    let middle = Math.floor((min + max) / 2);
    let midpoint = arr[middle];

    if (midpoint < num) {
      min = middle + 1;
    }
    else if (midpoint > num) {
      max = middle - 1;
    }
    else {
      return middle;
    }
  }

  return -1;
}