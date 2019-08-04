Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADC380B10
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 15:03:17 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C72A5822B7;
	Sun,  4 Aug 2019 15:03:13 +0200 (CEST)
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by open-mesh.org (Postfix) with ESMTPS id 78A8E80610
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 15:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1564923791;
 bh=q22eDvJegcc1IrF8Kcg0WSjGCSxbErlo4gkwevIAhXE=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=VSnmQHElGzkIWhIf2aktWfzzgzAMApxOk/MFqufC2Z/FUvKybjj7N/I1Nm4nKjWRb
 1wO1nRbPBWAi8NKrIvUA7Ocs9irjk/OxNZBjsUE/q9/zINnBEZXm8xa8bTDbYPb+Va
 XOHHS/HQNFK0nNwvYK7VDzArg98TgiM9ggSBUba0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.154] ([79.218.129.226]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MTy9d-1hlhTb49xJ-00QhOX for
 <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 04 Aug 2019 15:03:11 +0200
To: b.a.t.m.a.n@lists.open-mesh.org
From: Moritz Warning <moritzwarning@web.de>
Subject: netlink error with openwrt-19.07 branch
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9e7c2d2d-0dab-f03d-1868-d8a3a59f781c@web.de>
Date: Sun, 4 Aug 2019 15:03:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:2wOG3melxNTJSBuWaHtYA3QbaxDjjt+/+GMpSMSLnXXhe8Lz0dH
 InfW/WmYDcmFhLMaCIqyQ26vY5uJv7CLbo/fANasKs6+0wHcs8x3bLOJ7yYx5pmQnjkbVAA
 gERLSqiXSFJXqVy/hCkjfWgqChNnymRyeJ6byaRk04/xv1oNWmQ5zaUnxj4fesMZKJAlhDJ
 WhmSvnn6ccPhTRguIeeLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O2kPVljtl2U=:cyoFKf+TVS3KnNjgvmnmrJ
 Fo7Y0U4UNIjwcG6NURAzVKpivdZToNgXlx2DDO5bYoD4/Zs9U+qmeYW83I8D9f9gvNt7cQIOa
 r9nZT1Bx9bHV9mw2j6wGSaBEtAmZ8ZAtVuTcZ1LJAyedh4AewJ8fBivAowK85sQAxczQK8/Q8
 ZIx//z5u7Bl2HF3t3QXaMCyuC2ZaseQpzdfXZFFW8SCCS5KyR4jOam+P8enB7uED/4kNDSwFb
 M0nwRVGbHr/tboTzWK7rwxq+GDjeGyTZm1Uw/6eMH+X8wPc/ZTTGuEEXDaZvj7EFW3GUN0y8z
 q0TC9MKvL0/fEeki+hCCHxhzHLirjz8zwQbrH83dtw9YQE+QxiJ5gf/NJ5ypmYc1r9Ovt3DYD
 E654pGZRC+kXacVt9jSniFBfjsZ8NKUf0ILpgXdcVav8KOj74dF4QNXubb4YRWGzoerrdOYCE
 yLjiG74132KBhWIfj6VZ6OXH5txKMTaM1gFramFb/oR2nJDiBM4x5XxnLzQM+v+Rt8xkKMdCk
 xmJ25egOMOwNZ52tqTysuaUD6yLYZTIx+pvL45vpaPOOi4ZYum5C2IjCagQV1fI4xYkmcHDmr
 TiL2bDKd0wjP1SD3ZBTZrK6+TEuDErPDKcaJUSxhQ5voX84l8mekSm0xCGqTAtfEaayXikhFT
 6so/YO6xq4Lu2qnNxwamWcZUQxvLkqZx3vv5H+2bNRRhZN9ZQ7BrKhvkQDXb1BcgWkWXb35QQ
 xrLZuKwXFWrspnp4LfnukV538Sunuf3B+2GHDiObZmdbtB8j/wrt4bg8ZJV9t57p1PxmxDiA9
 SN/QGbk/FdPYx4cFSG+NJiui6W4G1Hhxgz7kdOny1PyVjbIq9OUw7Fou4lAtqSMBdUaoS71Rx
 aw7SbrXz92xomPiZbn5ZBZwJCFgq3V3m+JrEg7Vk6AKy5BwQaf7Lua6ic/tZaaqnAoQwtaTWA
 ExUQuy2W0LiWvW0euC8HTwMP03A0c6Tn4D0Vsq4SODGSnYGBSNbuELw3uUFyYB3aa1J+V/yQf
 n+WmKQqgaHvZuX8BWRbtwNVuedtuRwbCtoR4pctxhdBDUVqpFI7/pysyN11nbQwsySWk4GH5M
 yYHzynHBfzDf4FftSn21qNnbxhw/LHOZW5FOYs1Mhpgh8bvigL9+u9jvVMrRZd6OLuCbwfRmO
 Ps82k=
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

hi,

the OpenWrt branch openwrt-19.07 uses linux-4.14.134 and batman-adv 2019.2 (package release 4).

Compiling gives me this error:

home/user/openwrt/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/batman-adv-2019.2/net/batman-adv/netlink.c:1346:4: error: 'const struct genl_ops' has no member named 'validate'
   .validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
    ^~~~~~~~
/home/user/openwrt/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/batman-adv-2019.2/net/batman-adv/netlink.c:1346:15: error: 'GENL_DONT_VALIDATE_STRICT' undeclared here (not in a function); did you mean 'MACSEC_VALIDATE_STRICT'?
   .validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
               ^~~~~~~~~~~~~~~~~~~~~~~~~
               MACSEC_VALIDATE_STRICT
/home/user/openwrt/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/batman-adv-2019.2/net/batman-adv/netlink.c:1346:43: error: 'GENL_DONT_VALIDATE_DUMP' undeclared here (not in a function); did you mean 'GENL_DONT_VALIDATE_STRICT'?
   .validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
                                           ^~~~~~~~~~~~~~~~~~~~~~~
                                           GENL_DONT_VALIDATE_STRICT
/home/user/openwrt/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/batman-adv-2019.2/net/batman-adv/netlink.c:1353:4: error: 'const struct genl_ops' has no member named 'validate'
   .validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,


Is this a known error?
