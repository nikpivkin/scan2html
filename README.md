# scan2html
A Trivy plugin that scans and outputs the results to a html file.

```
$ trivy scan2html image alpine:3.14.1 result.html
```
![image](https://user-images.githubusercontent.com/19297627/224302593-6873913c-d829-4769-84b6-643d00607a4a.png)
![image](https://user-images.githubusercontent.com/19297627/225588665-7b9dc56b-3326-4535-90f3-1dd81e389e5c.png)

### `scan2html` supports `--list-all-pkgs`
```sh
$ trivy scan2html image alpine:3.14.1 --list-all-pkgs r.html
```
![image](https://user-images.githubusercontent.com/19297627/226530343-100e3064-0b0a-4860-a439-b6dfd97ac7c3.png)
![image](https://user-images.githubusercontent.com/19297627/226530361-65acc67e-64c0-45f4-b514-31c514284c2f.png)

## Install
```sh
$ trivy plugin install github.com/afdesk/scan2html

$ trivy scan2html -h

Usage: trivy scan2html [-h,--help] command target filename
 A Trivy plugin that scans and outputs the results to a html file.
Options:
  -h, --help    Show usage.
Examples:
  # Scan  image
  trivy scan2html image alpine:latest result.html

  # Scan local folder
  trivy scan2html fs . result.html
```

## Uninstall
```sh
  trivy plugin uninstall scan2html
```

## Use container image

```shell
docker pull nikpivkin/scan2html

docker run -it --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $HOME/Library/Caches:/root/.cache/ \
  -v $PWD:/project_dir \
  nikpivkin/scan2html:latest image --dependency-tree python /project_dir/result.html
  
docker run -it --rm \
  -v $HOME/Library/Caches:/root/.cache/ \
  -v $PWD:/project_dir \
  nikpivkin/scan2html:latest fs /project_dir /project_dir/result.html
```
