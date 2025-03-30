+++
title = "Projects"

[extra]
show_reading_time = false
+++

<div id="banner-container-home">
    <div id="home-banner-text">
        <h1 id="home-banner-header">Hi👋</h1>
        {% subtitle() %}

Welcome to the Qool Quantum Qompilers project (QQQ) from the University of Wisconsin--Madison. We're working on a robust end-to-end compiler for quantum programs to keep up with a 
rapidly evolving hardware landscape. You can find our software at our [Github organization](https://github.com/qqq-wisc/).

We're giving a [tutorial](tutorial) at ASPLOS 2025 on our work!
Join us!

        {% end %}
    </div>
        <div id="image-container-home">
            <img alt="qqq logo" id="banner-home-img" src="files/qqq.png" />
        </div>
</div>

{% title() %}

Projects

{% end %}

## wisq

A powerful compiler that integrates ``guoq`` (a circuit optimizer) and ``dascot`` (a fault-tolerant mapping and routing solver) \
[code](https://github.com/qqq-wisc/wisq)

## dascot

Mapping and routing for surface code architectures \
[paper](/files/oopsla25.pdf)  |  [code](https://github.com/qqq-wisc/wisq) (part of ``wisq``)

## guoq

Unify rewrite rules and circuit resynthesis to optimize circuits \
[paper](/files/asplos25.pdf)  |  [code](https://github.com/qqq-wisc/guoq)

## queso

Automatically synthesize a circuit optimizer given a set of basis gates \
[paper](/files/pldi23.pdf)  |  [code](https://github.com/qqq-wisc/queso)

## satmap

Map qubits and route two qubit gates while minimizing SWAP operations \
[paper](/files/micro22.pdf)  |  [code](https://github.com/qqq-wisc/satmap)

## Benchmark Suite

Evaluate your compiler with quantum compiler with a comprehensive set of test circuits \
[repo](https://github.com/qqq-wisc/quantum-compiler-benchmark-circuits)
