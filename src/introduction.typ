
= Introduction

== whoami

- Leav Developer at *Dria*.
- This presentation is written in *Typst*, a typesetting language built in Rust!

== What is libp2p?

libp2p#footnote("https://github.com/libp2p/rust-libp2p") is a modular peer-to-peer networking stack, driven by well-designed specifications with several implementations (Go, JavaScript, *Rust*, C).

Rust implementation of libp2p in particular is being used in notable projects like *IPFS* client, *Lighthouse* Ethereum consensus client, *Filecoin* client, *Substrate* (of Polkadot), and many more.


== Protocol Stack

#columns(2)[
  === Connection
  - TCP, QUIC, WebSocket
  - Multiplexing (*Yamux*, *mplex*)
  - Security (*Noise*)

  === Discovery
  - Kademlia DHT
  - Multicast DNS (mDNS)
  - Rendezvous

  #colbreak()

  === Communication

  - GossipSub
  - Request-Response
  - DCutR
]


