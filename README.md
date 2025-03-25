## WordPress Deployment on Koyeb

## Overview
Deploy a WordPress site quickly and easily on Koyeb using Docker and GitHub.
[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?name=wordpress-on-koyeb&type=docker&image=maddog675%2Fwordpress-on-koyeb&instance_type=free&regions=was&instances_min=0&autoscaling_sleep_idle_delay=300&ports=80%3Bhttp%3B%2F&hc_protocol%5B80%5D=tcp&hc_grace_period%5B80%5D=5&hc_interval%5B80%5D=30&hc_restart_limit%5B80%5D=3&hc_timeout%5B80%5D=5&hc_path%5B80%5D=%2F&hc_method%5B80%5D=get)
## Prerequisites
- Koyeb account
- GitHub account
- Basic Docker knowledge (optional)

## Quick Start

### 1. Get GitHub Repository URL
1. Go to the GitHub repository
2. Click the green "Code" button
3. Copy the HTTPS URL 

### 2. Deploy on Koyeb
1. Log in to Koyeb Dashboard
2. Create a new service
3. Select "GitHub"
4. Paste the GitHub repository URL
5. Configure deployment settings
6. Deploy

## Troubleshooting
- Koyeb has access
- Check Koyeb deployment logs
- Verify GitHub repository URL

## Resources
- [Koyeb Documentation](https://www.koyeb.com/docs)
- [WordPress Official Site](https://wordpress.org)
- [Docker Compose Reference](https://docs.docker.com/compose/)

## License

MIT License

Copyright (c) 2025 maddog

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
