#!/bin/sh

uvicorn server:app --host 0.0.0.0 --port 5000 --loop uvloop --workers 2 --log-level warning