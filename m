Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0055014F2BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 31 Jan 2020 20:26:15 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DD84480BA1;
	Fri, 31 Jan 2020 20:25:57 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id E130B80011
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 31 Jan 2020 20:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1580498581;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=475KMUwh+W/5/54fUMNMhVrEiGEgG0BkyP5o/poCjIk=;
 b=Y1wkZ6At5ZQ1bhcC6hZKYluFT+vJPz6yK7Ljag2xjl8U4ZAujGX6rx+W8OlSQrIfAhXCaQ
 yO+11tdDhDi08PgkU/0ig1SLo0K6F70Yqg/1/9+ela2yPYDyuiKjCbIwt4kulktZZ8BgRK
 0K54wdA1O+ZlJo1HJ7XxIwmuEWATVN4=
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+37bad4f9cb2033876f32@syzkaller.appspotmail.com>
Subject: Re: KMSAN: uninit-value in batadv_bla_tx
Date: Fri, 31 Jan 2020 20:22:48 +0100
Message-ID: <2584399.6Er73V5Qae@sven-edge>
In-Reply-To: <0000000000004701a9059d7351dd@google.com>
References: <0000000000004701a9059d7351dd@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5323429.oYtFQFovjn";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580498582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=475KMUwh+W/5/54fUMNMhVrEiGEgG0BkyP5o/poCjIk=;
 b=k0nt1+gTw0ku9Q4kePkS9dcKrqfbtgjXF162ELR5RCs99Rpj0jyE9ub6tcu2SOD6Ro97zW
 eQDf/TGjQgIBfE0vIOmt+MXAZxbHLqOOmeCt+iwVmVZdZuNJ2sqaZR+lKQpzHdFIPsi3w/
 pELhNXCzU1+ElDbqv/fy+VanR03UpBY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580498582; a=rsa-sha256; cv=none;
 b=T3Pp2lvVnp5bNWTmcUnBn9RNZ/5HFCBAhqXV+3dsK5LhjFdT1riaF7LaZirMpYF6IET/RE
 jWsm3DBPxICUf3CZvSGB367gseTcg/rPbZPjYpR72q9LY9986K2b31TWdQirNfj2cV9ECH
 CE+xob+HnJkn7QpZg10vh45z0K62omA=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=Y1wkZ6At;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Fri, 31 Jan 2020 20:25:51 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, glider@google.com, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart5323429.oYtFQFovjn
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 31 January 2020 18:58:13 CET syzbot wrote:
[...]
> HEAD commit:    686a4f77 kmsan: don't compile memmove
> git tree:       https://github.com/google/kmsan.git master
> console output: https://syzkaller.appspot.com/x/log.txt?x=10b1da4ee00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=e10654781bc1f11c
> dashboard link: https://syzkaller.appspot.com/bug?extid=37bad4f9cb2033876f32
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=102be0a1e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=123105a5e00000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+37bad4f9cb2033876f32@syzkaller.appspotmail.com
> 
> =====================================================
> BUG: KMSAN: uninit-value in batadv_bla_tx+0x2675/0x3730 net/batman-adv/bridge_loop_avoidance.c:1960
> CPU: 0 PID: 9 Comm: ksoftirqd/0 Not tainted 5.5.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
[...]

Looks like the same problem in HSR as 
 https://syzkaller.appspot.com/bug?extid=24458cef7d37351dd0c3

#syz dup: KMSAN: uninit-value in batadv_interface_tx (2)

Kind regards,
	Sven
--nextPart5323429.oYtFQFovjn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl40fokACgkQXYcKB8Em
e0YVug/+Lq5g6TG+P5pDoP29Gwz/VR393Sy1CVg08+qKhg4xaXgYCd/N+qdrhHFL
9nF44JbNEcTr56+hwr382xo9Er5dwmPt2bdWqQfmg7p3gcdgNunW6E2fepA8gbrK
Xs4FQC2nmLhIS0xFPEOq39RsaCg+fuwvqufInXiG65FjasecPqqmHL8bJjsxmWK0
OJKqANFKtmLc47bvDhY8iln3snvRdqVCoT35QKkGYaCmHmOSR6029idnAXpU/4Mm
8feJ1z6oN3InoX41CHbeonATimjUvTwNuQ7w6BcrixzIACh/dM+xFEoeeaoXeFYb
ym6WH5v2e4LjrI5HkoHNqvsPAIeh/VTdvTLNEmzqhISzLZjhX4SJKE9wjIZzP7qI
ifpcRFI4a5rzedS+HzOAP417UIqXcLwVqWEWmN8F/VljEWI/ZR3LCzeNFDSzujBh
Dy+0p/te5IpWgBhAtEDfkcME1PjFIZrQSQo8DwTEE2ZrBc7rID0kmsc3m2xDcoHZ
44pdVRptM6IzSfqqdKyODB2/Q+6rusCWNFLhO9dVshacYN1MOvQzbtqQ63+TpbAe
0RqtaQGYRRhnM54tO5Ms7AzayWftal2zra2ftyFWtsok6THqNxRvYNCXiB8NGFch
VJl/HZFnh+RbgP6DnCqT0GxXpd9dEnrr/VXSq3XRsTf7rk5OR+A=
=fZ5+
-----END PGP SIGNATURE-----

--nextPart5323429.oYtFQFovjn--



