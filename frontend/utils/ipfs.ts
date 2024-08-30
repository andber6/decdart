import * as IpfsHttpClient from 'ipfs-http-client';

const ipfs = IpfsHttpClient.create({
  host: 'localhost',
  port: 5001,
  protocol: 'http',
});

export async function addFileToIpfs(file) {
  const result = await ipfs.add(file);
  return result.cid.toString();
}
