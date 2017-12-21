fs = require 'fs'
module.exports =
  config:
    SelectSyntax:
      type: 'string',
      default: 'Peel',
      enum: ['Arstotzka', 'Azure', 'Banner', 'Bold', 'Boxuk', 'Brave', 'Brave Contrast', 'Carbon Night', 'Carbon Night Contrast', 'Chocolate',
             'Coffee', 'Coffe Contrast', 'Comrade', 'Comrade Contrast', 'Crackpot', 'Crackpot Contrast', 'Crisp', 'Darkside', 'Darkside Contrast', 'Downpur',
             'Downpur Contrast', 'Earthsong', 'Earthsong Contrast', 'Earthsong Light', 'Fodder', 'Fodder Contrast', 'Freshcut', 'Freshcut Contrast', 'Frontier', 'Frontier Contrast',
             'Github', 'Glance', 'Glance Contrast', 'Gloom', 'Gloom  Contrast', 'Glowfish', 'Glowfish Contrast', 'GoldFish', 'GoldFish Contrast', 'Grung',
             'Grung Contrast', 'HalfLife', 'HalfLife Contrast', 'Heroku', 'Hive', 'Hive Contrast', 'Horizon', 'Horizon Contrast', 'Hyrule', 'Hyrule Contrast',
             'Iceberg', 'Iceberg Contrast', 'Isotope', 'Juicy', 'Juicy Contrast', 'Jumper', 'Jumper Contrast', 'Keen', 'Keen Contrast', 'Kiwi',
              'Laravel', 'Laravel Contrast', 'Lavender', 'Lavender Contrast', 'Legacy', 'Lichen', 'Lichen Contrast', 'Mellow', 'Mellow Contrast', 'Mintchoc',
              'Mud', 'Mud Contrast', 'Murass', 'Newton', 'Newton Contrast', 'Otakon', 'Pastel', 'Patriot', 'Patriot Contrast', 'Peacoak',
              'Peacoak Contrast','Peel', 'Piggy', 'Potpourri', 'Potpourri Contrast'
              ]

atom.config.onDidChange 'hundred.SelectSyntax', ({newValue, oldValue}) ->
   if(newValue == 'Arstotzka')
    fs.createReadStream(atom.packages.getPackageDirPaths() + '/hundred/styles/demo/arstotzka-variable').pipe(fs.createWriteStream(atom.packages.getPackageDirPaths() + '/hundred/styles/yoyo.less'));
   else if (newValue == 'Banner')
     fs.createReadStream(atom.packages.getPackageDirPaths() + '/hundred/styles/demo/banner').pipe(fs.createWriteStream(atom.packages.getPackageDirPaths() + '/hundred/styles/yoyo.less'));
   else if (newValue == 'Azure')
     fs.createReadStream(atom.packages.getPackageDirPaths() + '/hundred/styles/demo/azure').pipe(fs.createWriteStream(atom.packages.getPackageDirPaths() + '/hundred/styles/yoyo.less'));
   else
     fs.createReadStream(atom.packages.getPackageDirPaths() + '/hundred/styles/demo/heroku-variable').pipe(fs.createWriteStream(atom.packages.getPackageDirPaths() + '/hundred/styles/yoyo.less'));
