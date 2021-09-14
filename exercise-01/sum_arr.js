var sum = function(array, i) {
    if(array.length === 0){
        return 0;
    }
  if(i === array.length-1){
    return array[i];
  }
  return array[i] + sum(array, i+1);
};
console.log(sum([5, 9, 6, 8, 4, 6],0))