Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D900BB65B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Apr 2019 21:04:28 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E468080894;
	Sun, 28 Apr 2019 21:04:25 +0200 (CEST)
Received: from linuxlounge.net (linuxlounge.net [IPv6:2a01:4f8:c0c:76::1])
 by open-mesh.org (Postfix) with ESMTPS id 85968803E6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Apr 2019 21:04:23 +0200 (CEST)
To: b.a.t.m.a.n@lists.open-mesh.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=darmstadt.freifunk.net;
 s=mail; t=1556478263; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=lhVMqneFTfYAr7Jcl/bzcn3jAcPPzURF4s+KZ6KLUDQ=;
 b=FQ6V+TMQp+oAuppWbJkn2xCUhzscv71AcQDLttnh36p3vTw7ALhZ2tgUVzBO5jXBp3SRPA
 P784gODUQ0ndkATqCNBZ9pXC8pNpDUBtuURkAwfZ3fJgbrW0zYZRlFPO5t9qBd976a2Ibs
 91D5mWHBlrTysz0K7rUk1NTdhB9QFBSYiUIuKTWYZVLrqhruw1F28Zdob8NcrK9T0KFq+L
 0zsVow4KbmL4p2X75e+9cJRo534eaJfYCZ2xl0NmjG27fkhf/dgPvSjVIlecToC4CfafFc
 lmrJwuzQAbdTLRjz0VVKk507jAIURgDHb1lVRSo/ulj2fLrmTJtbA6QEv0QTdg==
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <2852684.HY4pDEyiBM@sven-edge>
From: Martin Weinelt <martin@darmstadt.freifunk.net>
Openpgp: preference=signencrypt
Autocrypt: addr=martin@darmstadt.freifunk.net; prefer-encrypt=mutual; keydata=
 mQENBEv1rfkBCADFlzzmynjVg8L5ok/ef2Jxz8D96PtEAP//3U612b4QbHXzHC6+C2qmFEL6
 5kG1U1a7PPsEaS/A6K9AUpDhT7y6tX1IxAkSkdIEmIgWC5Pu2df4+xyWXarJfqlBeJ82biot
 /qETntfo01wm0AtqfJzDh/BkUpQw0dbWBSnAF6LytoNEggIGnUGmzvCidrEEsTCO6YlHfKIH
 cpz7iwgVZi4Ajtsky8v8P8P7sX0se/ce1L+qX/qN7TnXpcdVSfZpMnArTPkrmlJT4inBLhKx
 UeDMQmHe+BQvATa21fhcqi3BPIMwIalzLqVSIvRmKY6oYdCbKLM2TZ5HmyJepusl2Gi3ABEB
 AAG0Lk1hcnRpbiBXZWluZWx0IDxtYXJ0aW5AZGFybXN0YWR0LmZyZWlmdW5rLm5ldD6JAVQE
 EwEKAD4CGyMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AWIQTu0BYCvL0ZbDi8mh+9SqBSj2Px
 fgUCW/RuGAUJEd/znAAKCRC9SqBSj2PxfpeZB/9VWUJDvzgAZnZqLNCvrcc6v8xqjVaaiVMd
 Hf5P6cOlwKekTgP5XpIS4cxc4wc+m2EG4Vq70+gcdTOBKXY+RpUVBMmbufVo47lgsDLkbQYp
 n4ZWh2VjJADiuEFX5Lk0Bo+dC8E5om9U71Qtq2WUloqZKdfagSmoo2u0F8SxX1OHZKmXiVfB
 Z57ypiQGzY9DfTcFwOXHvMUkOYGsUDn+RX0TlQR5hzvwfCQPoPtH3gulmSOEpF7cijhcqPDg
 Xtpocrssp2m6RwivIMKEc8gSPwGK31pfhEa5tI0nvMRnj4wuUMxbLVRoLxt5fVm/w9XZIcxJ
 Syhlmmd1/sl1PxFYu8W3uQENBEv1rfkBCADJX6bbb5LsXjdxDeFgqo+XRUvW0bzuS3SYNo0f
 uktM5WYMCX7TzoF556QU8A7C7bDUkT4THBUzfaA8ZKIuneYW2WN1OI0zRMpmWVeZcUQpXncW
 WKCgLBNYtk9CCukPE0OpDFnbR+GhGd1KF/YyemYnzwW2f1NOtHjwT3iuYnzzZNlWoZAR2CRS
 D02BYU87Mr2CMXrgG/pdRiaD+yBUG9RxCUkIWJQ5dcvgrsg81vOTj6OCp/47Xk/457O0pUFt
 ySKSjZkZN6S7YXl/t+8C9g7o3N58y/X95VVEw/G3KegUR2SwcLdok4HaxgOy5YHiC+qtGNZm
 DiQnNXN7WIN/oof7ABEBAAGJATwEGAEKACYCGwwWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUC
 W/RuGAUJEd/znwAKCRC9SqBSj2PxfpzMCACH55MVYTVykq+CWj1WMKHex9iFg7M9DkWQCF/Z
 l+0vQmyRMEMZnFW8GdX/Qgd4QbZMUTOGevGxFPTe4p0PPKqKEDXXXxTTHQETE/Hl0jJvyu+M
 gTxGE9/KrWmsmQC7ogTFCHf0vvVY3UjWChOqRE19Buk4eYpMbuU1dYefLNcD15o4hGDhohYn
 3SJrq9eaoO6rpnNIrNodeG+1vZYG1B2jpEdU4v354ziGcibt5835IONuVdvuZMFQJ4Pn2yyC
 +qJeekXwZ5f4JEt0lWD9YUxB2cU+xM9sbDcQ2b6+ypVFzMyfU0Q6LzYugAqajZ10gWKmeyji
 sgyqsv5UJTKaOB/t
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood" broadcast
 flood prevention option
Message-ID: <cb27fa9e-c7d2-db51-6f47-c717612b82af@darmstadt.freifunk.net>
Date: Sun, 28 Apr 2019 21:04:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.0
In-Reply-To: <2852684.HY4pDEyiBM@sven-edge>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qOf7ldBdW7G0UReenGKA8T1xarIfDKm0K"
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--qOf7ldBdW7G0UReenGKA8T1xarIfDKm0K
Content-Type: multipart/mixed; boundary="LThiVLcTzabBBQMf3XMbwExyx6Q9ODbrB";
 protected-headers="v1"
From: Martin Weinelt <martin@darmstadt.freifunk.net>
To: b.a.t.m.a.n@lists.open-mesh.org
Message-ID: <cb27fa9e-c7d2-db51-6f47-c717612b82af@darmstadt.freifunk.net>
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood" broadcast
 flood prevention option
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <2852684.HY4pDEyiBM@sven-edge>
In-Reply-To: <2852684.HY4pDEyiBM@sven-edge>

--LThiVLcTzabBBQMf3XMbwExyx6Q9ODbrB
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi everyone,

Please see my reply below.

On 4/28/19 7:04 PM, Sven Eckelmann wrote:
> On Friday, 26 April 2019 19:12:31 CEST Linus L=FCssing wrote:
>> With DAT DHCP snooping, the gateway feature and multicast optimization=
s
>> in place in some scenarios broadcast flooding might not be strictly
>> necessary anymore to be able to establish IPv4/IPv6 communication.
>> Therefore this patch adds an option to disable broadcast flooding.
>>
>> Larger mesh networks typically filter a variety of multicast packets v=
ia
>> ebtables/netfilter to clamp on overhead. With this option such firewal=
l
>> rules can be relaxed so that such multicast packets are only dropped
>> if they cannot be handled by multicast-to-unicast, for instance.
>>
>> "noflood" comes in two flavours: If set to 1 then flood prevention is
>> enabled for all multicast/broadcast packets except ICMPv6 and IGMP
>> (cautious mode). Or, if set to 2 then flood prevention is enabled for
>> all multicast/broadcast packets (aggressive mode). If set to 0 then
>> flood prevention is disabled.
>>
>> "noflood" is disabled by default as there are still some things to tak=
e
>> care of to avoid breaking things (especially for the "aggressive mode"=
).
>>
>> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>
>=20
> @Martin, I think you've started to experiment with this noflood feature=
=2E Any=20
> experiences which you can share with us?
>=20
> Kind regards,
> 	Sven
>=20

We have been using the early noflood and DHCP snooping patches from
Linus since roughly 2018/04. They were based on sockmarking packets that
should be handled by noflood. This resulted in quite some amount of
ebtables rules on our gateways, that marked addresses within DHCP ranges
for noflood, since they were very likely already snooped. The result can
be seen in graphs I provided to Linus back then, that are now visible at
https://www.open-mesh.org/projects/batman-adv/wiki/DAT_DHCP_Snooping#Resu=
lt.

We did not experience any usability issues that could be traced back to
these patches. I've dropped the patches when the DHCP snooping landed
upstream, so we're currently (since 2019/04) running
v2019.1-14-g28573050 without without noflood.

I have no knowledge of this versions two new "flavours", I was pretty
happy with the aggressiveness of the earlier patches even though it's
manual setup, where we created those ebtables rules from scratch. I
would be happy to also test these new changes, but I'm currently lacking
the wirerrd (https://github.com/T-X/wirerrd) setup that created those
fancy graphs.


Best regards,
Martin


--LThiVLcTzabBBQMf3XMbwExyx6Q9ODbrB--

--qOf7ldBdW7G0UReenGKA8T1xarIfDKm0K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE7tAWAry9GWw4vJofvUqgUo9j8X4FAlzF+TYACgkQvUqgUo9j
8X5icwgAm+jr56XGyD90+2wh6b0/M0OdFSxmeErsPCxwwQXzXR3Qwhl03kbtTzqV
mM0vyceMLu3y+Cjd6gF5bbseOUdhzZEc9tkvmJnO1uuTfS++OIs6hNQKYPZ9dfBA
wAWHXM13+N3uTtrEmUQnx2Y6glZ9afYldBAUTZxeiLDeu7MhQOXIEbhEycwhCTPD
d1vd7GC3kRsKlnYNfTj/wDWO0CZ5Fh1UYtcDxy1Vn3ImPFMUY3jRmWXd+Mz3TnBC
bTAlbLpiAqDUJNVw0yRdsQmn1ts/w+NlxDlgi5raa1Xbk2afYeV+w/Yf9NjNpgdO
kdREm672eQx+Vge9PAMrpvU4+5qoag==
=saG+
-----END PGP SIGNATURE-----

--qOf7ldBdW7G0UReenGKA8T1xarIfDKm0K--
