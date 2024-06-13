import ccxt


class CcxtExchange:
    def __init__(self):
        self.exchange = ccxt.bybit()

    def get_symbol(self, symbol, timeframe):
        return self.exchange.fetch_ohlcv(symbol, timeframe)