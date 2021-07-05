/*
  End-to-end tests for the Address endpoint.
  These tests assume that the repo is running locally and pointed at TESTNET
*/

'use strict'

const rp = require('request-promise')

// const rawtransactions = require('../../../dist/routes/v2/address')

/*
  This unconfirmed utxo test needs to be expanded in the future to automatically
  create a transaction. For now, that is done manually and the address provided
  as a constant.

  1. Start rest running locally, pointed at TESTNET.
  2. Fund each address with a small amount of tBCH
  3. Run this program with `node address.js`
  4. If successful, it will return the unconfirmed UTXOs.
*/
const addr1 = 'bchreg:qzhf8ssjuy6ahwy7u4k7azspg2r0s0hs0cnccnk760'
const addr2 = 'bchreg:qrsajv5ghg5hln5alxhd85ckx7uexk25jc4txs27rq'

async function testSingleUnconfirmed () {
  try {
    const options = {
      method: 'GET',
      uri: `http://localhost:3000/v4/address/unconfirmed/${addr1}`,
      resolveWithFullResponse: true,
      json: true
    }

    await rp(options)
    // console.log(`result.body: ${JSON.stringify(result.body, null, 2)}`)
  } catch (err) {
    // console.log(`Error: `, err)
  }
}
testSingleUnconfirmed()

async function testDoubleUnconfirmed () {
  try {
    const options = {
      method: 'POST',
      uri: 'http://localhost:3000/v4/address/unconfirmed',
      resolveWithFullResponse: true,
      json: true,
      body: {
        addresses: [addr1, addr2]
      }
    }

    await rp(options)
    // console.log(`result.body: ${JSON.stringify(result.body, null, 2)}`)
  } catch (err) {
    // console.log(`Error: `, err)
  }
}
testDoubleUnconfirmed()