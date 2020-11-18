# chrome-incognito-storage-bug

- Chrome blocks crossorigin iframes from accessing `localStorage` and `sessionStorage` when in incognito mode.
- The port is supposed to be part of what determines whether an iframe is same-origin. When accessing the same url on a different port, it should be considered crossorigin.
- This repository shows that Chrome is allowing storage access in incognito window when using a domain that varies only in port.

## To reproduce

1. Map also.localhost to 127.0.0.1 in your /etc/hosts file.
2. Run two HTTP Servers (e.g. `npx http-server`). One on port 3001 and the other on 3002.
3. Open index.html in incognito window and check the Developer Console. The `storage.js` script prints whether or not Storage is usable.


## Browser Results

**Chrome**
- iframe at `also.localhost` does not have access to storage.
- iframe at `localhost:3002` (other port) *does*.

**Safari**
- both iframes have storage access

**Firefox**
- both iframes have storage access.