function madLib(word1, word2, word3) {
  return `We shall ${word1.toUpperCase()} the ${word2.toUpperCase()} ${word3.toUpperCase()}.`
}

function isSubstring(string, word) {
  return string.split(' ').includes(word);
}

function fizzBuzz(array) {
  let new_arr = [];
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 !== 0) {
      new_arr.push(array[i]);
    }
    if (array[i] % 5 === 0  && array[i] % 3 !== 0) {
      new_arr.push(array[i]);
    }
  }
  return new_arr
}

function isPrime(num) {
  if (num <= 2) {
    return false
  }
  for (let i = 2; i < num; i++) {
    if (num % i == 0) {
      return false
    }
  }
  return true
}


function sumOfNPrimes(n) {
  
}
