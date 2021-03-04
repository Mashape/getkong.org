<!---shared with logging plugins: file-log, http-log, loggly, syslog, tcp-log, udp-log DOCS-1617 --->

A few considerations on the JSON object:

* `request` contains properties about the request sent by the client.
* `response` contains properties about the response sent to the client.
* `tries` contains the list of (re)tries (successes and failures) made by the load balancer for this request.
* `route` contains Kong properties about the specific Route requested.
* `service` contains Kong properties about the Service associated with the requested Route.
* `authenticated_entity` contains Kong properties about the authenticated credential (if an authentication plugin has been enabled).
* `workspaces` contains Kong properties of the Workspaces associated with the requested Route. **Only in Kong Enterprise version >= 0.34**. There is a `ws-id` on services and routes that reference the workspace ID.
* `consumer` contains the authenticated Consumer (if an authentication plugin has been enabled).
* `latencies` contains some data about the latencies involved:
  * `proxy` is the time it took for the final service to process the request.
  * `kong` is the internal Kong latency that it took to run all the plugins.
  * `request` is the time elapsed between the first bytes were read from the client and after the last bytes were sent to the client. Useful for detecting slow clients.
* `client_ip` contains the original client IP address.
* `started_at` contains the UTC timestamp of when the request has started to be processed.

Log plugins enabled on services and routes contain information about the service or route.