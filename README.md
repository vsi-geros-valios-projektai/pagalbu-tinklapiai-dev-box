# pagalbu-tinklapiai-dev-env
Dev environment for aukokdaiktus.lt, aukoklaika.lt, admin.aukokdaiktus.lt projects. Made with the help of puphpet.com

## How to set up?

1. Do `git clone https://github.com/vsi-geros-valios-projektai/pagalbu-tinklapiai-dev-box.git .` from the directory of your choice.  
2. Do `vagrant up` from the same directory.  
3. Do `vagrant ssh`  
4. Do `sudo /vagrant/_install/puphpet/files/exec-once/config-nginx.sh`  
5. Copy content of `_install\hosts\hosts` (one of many files you just pulled from the repository in step 1) into host file of your own OS. For example, if Windows 10 then copy to `C:\Windows\System32\drivers\etc\hosts`. Other OS may have different host file location.  
6. Clone repositories of each project (aukokdaiktus.dev, aukoklaika.dev, admin.aukokdaiktus.dev) into the directory of each project:  
- `ssh://git@mano.gerasfabrikas.lt/source/admin.aukokdaiktus.lt.git`  
into `admin.aukokdaiktus.dev\httpdocs`  
- `ssh://git@mano.gerasfabrikas.lt/source/aukokdaiktus.lt.git`  
into `aukokdaiktus.dev\httpdocs`  
- `ssh://git@mano.gerasfabrikas.lt/source/aukoklaika.lt.git`  
into `aukoklaika.dev\httpdocs`  
For more info on the step: [http://mano.gerasfabrikas.lt/w/programavimas_aukok*_projektuose/](http://mano.gerasfabrikas.lt/w/programavimas_aukok*_projektuose/)  
7. Type url and open any of projects: aukokdaiktus.dev , or aukoklaika.dev , or admin.aukokdaiktus.dev  


The internet connection is required at step 1 (for connecting to github), step 2 (downloading files for a box installation), and step 4 (for downloading updates).

All users (for example: user+85@aukokdaiktus.dev) have the same password: 123456

Any questions? Feel free to contact.
