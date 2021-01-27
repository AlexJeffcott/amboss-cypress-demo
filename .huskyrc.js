const tasks = (arr) => arr.join(" && ");

module.exports = {
  hooks: {
    "pre-commit": tasks(["npm run format"]),
    "pre-push": tasks(["npm run lint"]),
  },
};
