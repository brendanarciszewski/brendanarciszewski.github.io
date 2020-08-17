zola-dev COMMAND="serve" TYPE="--dev":
    @just wasm-spa-dev {{TYPE}}
    zola {{COMMAND}}

alias dev := zola-dev

deploy:
    @just wasm-spa
    zola build --base-url https://temp--brendanarciszewski.netlify.app
    netlify deploy --auth {{ env_var("NETLIFY_AUTH_TOKEN") }} --site {{ env_var("NETLIFY_SITE_ID") }} --alias temp

serve:
    @just wasm-spa
    zola build
    miniserve --index index.html -- public/

wasm-spa-dev TYPE="--profile":
    wasm-pack build {{TYPE}} --target web --out-name wasm --out-dir static/app
    rm static/app/README.md

wasm-spa:
    @just wasm-spa-dev "--release"
    rm static/app/package.json static/app/*.ts
