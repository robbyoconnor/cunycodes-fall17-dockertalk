module.exports = {
  mongo: {
    host: 'mongodb',
    db: 'docker_talk',
    options: {
      useMongoClient: true,
      socketTimeoutMS: 0,
      keepAlive: true,
      reconnectTries: Number.MAX_VALUE,
      promiseLibrary: global.Promise,
    }
  },
};
