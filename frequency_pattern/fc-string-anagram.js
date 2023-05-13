
function validAnagram (first, second) {
  if (first.length !== second.length) {
    return false
  }

  let lookUp = {};

  for (let i = 0; i < first.length; i++) {
    let letter = first[i];
		lookUp[letter] ? lookUp[letter] += 1 : lookUp[letter] = 1;
  }

  for (let i = 0; i < second.length; i++) {
    let letter = second[i];
    if (!lookUp[letter]) {
      return false;
    }
    else {
      lookUp[letter] -= 1;
    }
  }
  
  return true;
}