# HTTP-Checker

This Bash script checks the HTTP status code received when requesting a specified URL and categorizes it:
- Sends a request to the URL using curl and records the response status code.
- Analyzes the code and displays a message:
- 200: Everything is fine, access confirmed.
- 404, 403, 401: Access error or page not found.
- 500, 502, 503, 400: Critical server error.
- 301, 302: Redirect handled.
- Any other code: Marked as unhandled.

**This script is useful for automated monitoring of web resource availability.**
