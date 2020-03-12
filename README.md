# Tectonic-Nix Action

This action compiles LaTeX documents using Tectonic.

## Inputs

### `master-doc`
**Required** The path to the master document. Default: `"master.tex"`.

## Example Usage

```yaml
uses: lihram/tectonic-nix
with:
    master-doc: "report/master.tex"
```