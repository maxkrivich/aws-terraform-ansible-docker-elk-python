import logging
import sanic

from sanic.response import json as sjson 
from sanic_json_logging import setup_json_logging


# Init sanic app instance
app = sanic.Sanic("echo_app")
logger = logging.getLogger('echo_app')

# Configure json logging
setup_json_logging(app)


async def info(msg):
    logger.info(msg)


# Setup routes
@app.route('/ping', methods=['GET'])
async def ping(request):
    await info('hello world!')
    return sjson({'result': 'pong'})


@app.route('/echo', methods=['POST'])
async def echo(request):
    await info(f'income request: {request.body} - from {request.ip}')
    return sjson({'echo': request.json})