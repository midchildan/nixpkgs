{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fvchp2rhp2rmigx7qglf69xvjqvzq7x0g49naliw29r2bz656sy";
      type = "gem";
    };
    version = "2.7.0";
  };
  atk = {
    dependencies = ["glib2"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a8q9a1f6x4gy55p8cf52a22bnpjgn18ad9n959x0f4gybbhs948";
      type = "gem";
    };
    version = "3.4.1";
  };
  cairo = {
    dependencies = ["native-package-installer" "pkg-config"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00hiy6anibkjq9w77hg0lpgnkkbcxrfbz8wxv44jfzqbab8910wb";
      type = "gem";
    };
    version = "1.16.6";
  };
  cairo-gobject = {
    dependencies = ["cairo" "glib2"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gkxdfslcvrwrs48giilji3bgxd5bwijwq33p9h00r10jzfg2028";
      type = "gem";
    };
    version = "3.4.1";
  };
  crack = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1awi8jy4jn0f7vxpdvz3xvn1zzjbjh33n28lfkijh77dla5zb7lc";
      type = "gem";
    };
    version = "0.4.4";
  };
  delayer = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wm6l4q0vzz030bh1lnm2a2w5l073vf1c5kak6zqqp5igbpl40l5";
      type = "gem";
    };
    version = "1.1.2";
  };
  delayer-deferred = {
    dependencies = ["delayer"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i2das3ncssacpqdgaf4as77vrxm7jfiizaja884fqv4rzv6s2sv";
      type = "gem";
    };
    version = "2.2.0";
  };
  diva = {
    dependencies = ["addressable"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05wl4wg57vvng4nrp4lzjq148v908xzq092kq93phwvyxs7jnw2g";
      type = "gem";
    };
    version = "1.0.2";
  };
  gdk_pixbuf2 = {
    dependencies = ["gio2"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0194gzn0kialfh0j7crllvp808r64sg6dh297x69b0av21ar5pam";
      type = "gem";
    };
    version = "3.4.1";
  };
  gettext = {
    dependencies = ["locale" "text"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04xlj00sm4mbgvyq0qkbxim75i7cpyn6iylpfwnyagl35wdvsszf";
      type = "gem";
    };
    version = "3.3.6";
  };
  gio2 = {
    dependencies = ["gobject-introspection"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1l3jpgbdvb55xhcmpkcqgwx5068dfyi8kijfvzhbqh96ng0p1m7g";
      type = "gem";
    };
    version = "3.4.1";
  };
  glib2 = {
    dependencies = ["native-package-installer" "pkg-config"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18clyn0fp0h5alnkf9i2bqd6wvl78h468pdbzs1csqnba8vw4q1c";
      type = "gem";
    };
    version = "3.4.1";
  };
  gobject-introspection = {
    dependencies = ["glib2"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1a3x8qiisbax3x0izj8l5w66r53ba5ma53ax2jhdbhbvaxx3d02n";
      type = "gem";
    };
    version = "3.4.1";
  };
  gtk2 = {
    dependencies = ["atk" "gdk_pixbuf2" "pango"];
    groups = ["plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17az8g0n1yzz90kdbjg2hpabi04qccda7v6lin76bs637ivfg2md";
      type = "gem";
    };
    version = "3.4.1";
  };
  hashdiff = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nynpl0xbj0nphqx1qlmyggq58ms1phf5i03hk64wcc0a17x1m1c";
      type = "gem";
    };
    version = "1.0.1";
  };
  httpclient = {
    groups = ["plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19mxmvghp7ki3klsxwrlwr431li7hm1lczhhj8z4qihl2acy8l99";
      type = "gem";
    };
    version = "2.8.3";
  };
  instance_storage = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08nf5fhq9dckq9lmaklxydq0hrlfi7phk66gr3bggxg45zd687pl";
      type = "gem";
    };
    version = "1.0.0";
  };
  locale = {
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0997465kxvpxm92fiwc2b16l49mngk7b68g5k35ify0m3q0yxpdn";
      type = "gem";
    };
    version = "2.1.3";
  };
  memoist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i9wpzix3sjhf6d9zw60dm4371iq8kyz7ckh2qapan2vyaim6b55";
      type = "gem";
    };
    version = "0.16.2";
  };
  mini_portile2 = {
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15zplpfw3knqifj9bpf604rb3wc1vhq6363pd6lvhayng8wql5vy";
      type = "gem";
    };
    version = "2.4.0";
  };
  mocha = {
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hxmkm8qxd04vwj8mqnpyrf2dwy7g1k9zipdfhl4y71cw7ijm9n4";
      type = "gem";
    };
    version = "1.11.2";
  };
  moneta = {
    groups = ["plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1718jm1h5ps5623jhjbbqvp1px3zr274562zjv6lyf6s785i6xqy";
      type = "gem";
    };
    version = "1.4.0";
  };
  native-package-installer = {
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0piclgf6pw7hr10x57x0hn675djyna4sb3xc97yb9vh66wkx1fl0";
      type = "gem";
    };
    version = "1.0.9";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    groups = ["plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xmf60nj5kg9vaj5bysy308687sgmkasgx06vbbnf94p52ih7si2";
      type = "gem";
    };
    version = "1.10.10";
  };
  oauth = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zszdg8q1b135z7l7crjj234k4j0m347hywp5kj6zsq7q78pw09y";
      type = "gem";
    };
    version = "0.5.4";
  };
  pango = {
    dependencies = ["cairo-gobject" "gobject-introspection"];
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1d0cn50qgpifrcv8qx72wi6l9xalw3ryngbfmm9xpg9vx5rl1qbp";
      type = "gem";
    };
    version = "3.4.1";
  };
  pkg-config = {
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1palp67dpv23fxghrc3wbaxfrj05g257y8m8bsgv9svhk8hxfj8m";
      type = "gem";
    };
    version = "1.4.3";
  };
  pluggaloid = {
    dependencies = ["delayer" "instance_storage"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m3f940lf1bg01jin22by7hg9hs43y995isgcyqb6vbvlv51zj11";
      type = "gem";
    };
    version = "1.5.0";
  };
  power_assert = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0smhaqxqc8bgpil306rx4qpmsx7xqfz9p7kjb5zx7fj6rbcv7yj1";
      type = "gem";
    };
    version = "1.2.0";
  };
  public_suffix = {
    groups = ["default" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xqcgkl7bwws1qrlnmxgh8g4g9m10vg60bhlw40fplninb3ng6d9";
      type = "gem";
    };
    version = "4.0.6";
  };
  rake = {
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0w6qza25bq1s825faaglkx1k6d59aiyjjk3yw3ip5sb463mhhai9";
      type = "gem";
    };
    version = "13.0.1";
  };
  ruby-prof = {
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12cd91m08ih0imfpy4k87618hd4mhyz291a6bx2hcskza4nf6d27";
      type = "gem";
    };
    version = "1.4.1";
  };
  test-unit = {
    dependencies = ["power_assert"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0im9nhi65l15lyc3gfzwy1ffqn0y6a39yz9xji6sfml35v2m2mf7";
      type = "gem";
    };
    version = "3.3.6";
  };
  text = {
    groups = ["default" "plugin"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x6kkmsr49y3rnrin91rv8mpc3dhrf3ql08kbccw8yffq61brfrg";
      type = "gem";
    };
    version = "1.3.1";
  };
  typed-array = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qlv2rnkin9rwkgjx3k5qvc17m0m7jf5cdirw3wxbjnw5kga27w9";
      type = "gem";
    };
    version = "0.1.2";
  };
  webmock = {
    dependencies = ["addressable" "crack" "hashdiff"];
    groups = ["test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z9k677j9f6jrsj6nkxl2h969q0zyfzqj2ibxldznd5jaqj85xmw";
      type = "gem";
    };
    version = "3.9.1";
  };
}