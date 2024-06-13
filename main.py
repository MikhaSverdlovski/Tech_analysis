from exchange.ccxt import CcxtExchange

exchange_instance = CcxtExchange()
symbol_data = exchange_instance.get_symbol('BTC/USDT','15m')
print(symbol_data)