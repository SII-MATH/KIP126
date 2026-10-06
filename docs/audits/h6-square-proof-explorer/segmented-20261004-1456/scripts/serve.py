#!/usr/bin/env python3
"""Serve this local reader on loopback only; no deployment or network dependency."""
import argparse
from functools import partial
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--port',type=int,default=8765)
args=parser.parse_args()
web=Path(__file__).resolve().parent.parent/'web'
server=ThreadingHTTPServer(('127.0.0.1',args.port),partial(SimpleHTTPRequestHandler,directory=str(web)))
print(f'Local reader: http://127.0.0.1:{args.port}/',flush=True)
try:
    server.serve_forever()
except KeyboardInterrupt:
    server.server_close()
