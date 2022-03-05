const Redis = require("ioredis");
const redis = new Redis("6379","noderedis");

const main = async () => {
  await redis.set("key", "val");
  const result = await redis.get("key");
  console.log(result); //val

  redis.disconnect();
};

main();
