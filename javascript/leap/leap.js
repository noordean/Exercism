export const isLeap = (num) => {
  if ((num % 4 === 0 && num % 100 !== 0) || num % 400 === 0) {
    return true;
  }

  return false;
};
