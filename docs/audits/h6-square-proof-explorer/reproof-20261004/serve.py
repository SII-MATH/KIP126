#!/usr/bin/env python3
"""Serve the local reader and its repository source links on loopback only."""
import argparse
from functools import partial
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument('--port', type=int, default=8770)
args = parser.parse_args()
root = Path(__file__).resolve().parents[4]
reader = Path(__file__).resolve().parent.relative_to(root).as_posix()
server = ThreadingHTTPServer(('127.0.0.1', args.port), partial(SimpleHTTPRequestHandler, directory=str(root)))
print(f'http://127.0.0.1:{args.port}/{reader}/web/', flush=True)
try:
    server.serve_forever()
except KeyboardInterrupt:
    pass
finally:
    server.server_close()
