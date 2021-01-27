const tasks = (arr) => arr.join(" && ");

module.exports = {
  hooks: {
    "pre-push": tasks(["npm run lint"]),
  },
};
