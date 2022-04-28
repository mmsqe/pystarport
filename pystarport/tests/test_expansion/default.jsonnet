local Utils = import "utils.jsonnet";

{
  'cronos_777-1': {
    cmd: 'cronosd',
    'start-flags': '--trace',
    'app-config': {
      'minimum-gas-prices': '5000000000000basetcro',
      'json-rpc': {
        address: '0.0.0.0:{EVMRPC_PORT}',
        'ws-address': '0.0.0.0:{EVMRPC_PORT_WS}',
      },
    },
    validators: [
      Utils.validator('visit craft resemble online window solution west chuckle music diesel vital settle comic tribe project blame bulb armed flower region sausage mercy arrive release'),
      Utils.validator('direct travel shrug hand twice agent sail sell jump phone velvet pilot mango charge usual multiply orient garment bleak virtual action mention panda vast'),
    ],
    accounts: [
      Utils.account(
        'community',
        '10000000000000000000000basetcro',
        'notable error gospel wave pair ugly measure elite toddler cost various fly make eye ketchup despair slab throw tribe swarm word fruit into inmate',
      ),
      Utils.account(
        'signer1',
        '20000000000000000000000basetcro',
        'shed crumble dismiss loyal latin million oblige gesture shrug still oxygen custom remove ribbon disorder palace addict again blanket sad flock consider obey popular',
      ),
      Utils.account(
        'signer2',
        '30000000000000000000000basetcro',
        'night renew tonight dinner shaft scheme domain oppose echo summer broccoli agent face guitar surface belt veteran siren poem alcohol menu custom crunch index',
      ),
    ],
    genesis: {
      consensus_params: {
        block: {
          max_bytes: '1048576',
          max_gas: '81500000',
        },
      },
      app_state: {
        evm: {
          params: {
            evm_denom: 'basetcro',
          },
        },
        cronos: {
          params: {
            cronos_admin: 'crc12luku6uxehhak02py4rcz65zu0swh7wjsrw0pp',
            enable_auto_deployment: true,
            ibc_cro_denom: 'ibc/6411AE2ADA1E73DB59DB151A8988F9B7D5E7E233D8414DB6817F8F1A01611F86',
          },
        },
        gov: {
          voting_params: {
            voting_period: '10s',
          },
          deposit_params: {
            max_deposit_period: '10s',
            min_deposit: [
              {
                denom: 'basetcro',
                amount: '1',
              },
            ],
          },
        },
        transfer: {
          params: {
            receive_enabled: true,
            send_enabled: true,
          },
        },
      },
    },
  },
}
