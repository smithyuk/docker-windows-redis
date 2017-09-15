# docker-windows-redis

Redis for Windows docker hosts.

Unfortunately I had to use server core rather than nano server but this may change in the future.

To build: `docker build -t smithyuk/windows-redis .`

Example usage: `docker run -p 6379:6379 -ti smithyuk/windows-redis`
