zola-dev COMMAND="serve" TYPE="--dev":
    @just wasm-spa-dev {{TYPE}}
    zola {{COMMAND}}

alias dev := zola-dev

pack:
    @just wasm-spa
    zola build

serve:
    @just pack
    miniserve --index index.html -- public/

wasm-spa-dev TYPE="--profile":
    wasm-pack build {{TYPE}} --target web --out-name wasm --out-dir content/app
    rm content/app/README.md

wasm-spa:
    @just wasm-spa-dev "--release"
    rm content/app/package.json content/app/*.ts
