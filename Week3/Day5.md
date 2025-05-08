# OSI Model 

We deep dive into the OSI Model using a real-world example — searching for "google.com" in a browser.

## 🌐 Prerequisites Before OSI Model Comes Into Play

1. **DNS Resolution**:
   - Maps domain names to IP addresses.
   - Starts with checking local router cache.
   - Falls back to ISP DNS if not found locally.

2. **TCP Handshake**:
   - A 3-way handshake ensures the server is ready.
   - Consists of SYN → SYN-ACK → ACK.
   - Must be completed before initiating data transfer.

## 📶 OSI Model — The 7 Layers

1. **Layer 7 – Application Layer**:
   - Initiates the request (e.g., HTTP/HTTPS).
   - Adds headers and authentication info.

2. **Layer 6 – Presentation Layer**:
   - Handles data encryption and formatting.
   - Ensures secure communication over HTTPS.

3. **Layer 5 – Session Layer**:
   - Manages sessions to avoid repeated logins.
   - Sessions are stored in cookies/cache by the browser.

*Layers 7, 6, and 5 are handled entirely by the browser (e.g., Chrome, Firefox).*

4. **Layer 4 – Transport Layer**:
   - Splits data into segments.
   - Chooses the protocol (TCP/UDP).
   - For HTTP, typically TCP is used.

5. **Layer 3 – Network Layer**:
   - Determines the best path (routing).
   - Adds source and destination IPs.

6. **Layer 2 – Data Link Layer**:
   - Converts packets to frames.
   - Adds MAC addresses for local delivery.

7. **Layer 1 – Physical Layer**:
   - Converts frames to electrical signals.
   - Transmits data via optical cables or Ethernet.

## 🔁 Data Round Trip

- When the request reaches Google’s servers, data flows from **Layer 1 up to Layer 7**.
- When the response (HTML page) comes back, it moves from **Layer 7 down to Layer 1** and is reconstructed on the client side.

## 🧠 Final Notes

- OSI Model provides a universal understanding of data transmission.
- Even though TCP/IP is more commonly used in practice, it is derived from the OSI model (layers 5–7 are combined in TCP/IP).
- Tools like Wireshark can inspect these layers, but high-level understanding is often sufficient unless you’re in a networking-specific role.
