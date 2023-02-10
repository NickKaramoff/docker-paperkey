# ~docker-paperkey~

> # Heads up!
>
> The repo and the Docker image aren't maintained any more. You can use the code to build your own image, but **do not rely on the published one**.

---

> A Docker image for [Paperkey] — an OpenPGP key archiver

[Paperkey] by David Shaw is a tool that lets you backup OpenPGP keys by printing them on paper. It compresses the key by removing all the unnecessary information and formats it in a way that allows easier re-entering in case a recover is needed.

## Usage

```sh
# pull the image
docker pull nickkaramoff/paperkey

# run the container with volume binding to the current directory
docker run --rm -v $(pwd):/ nickkaramoff/paperkey --secret-key my-secret-key.gpg --output to-print.txt
```

## Licence

This is free and unencumbered software released into the public domain.

[Paperkey] released under the Terms of GNU GPL v2.0.

[Paperkey]: https://www.jabberwocky.com/software/paperkey/
