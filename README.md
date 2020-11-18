# chrome-incognito-storage-bug

- Chrome blocks crossorigin iframes from accessing `localStorage` and `sessionStorage` when in incognito mode.
-  The port is supposed to be considered a part of a domain. When accessing the same URL on a different port, it should be considered a different domain.
- This repository shows that Chrome is allowing storage access in incognito window when the crossorigin iframe is using a differnet port.

## To reproduce

1. Map alsolocalhost to 127.0.0.1 in your /etc/hosts file.
2. Run two HTTP Servers (e.g. `npx http-server`). One on port 3001 and the other on 3002.
3. Open index.html in incognito window and notice that `localStorage` is usable.