Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ABF1D2B99
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2020 11:39:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1F32C80A35;
	Thu, 14 May 2020 11:39:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589449168;
 b=XNYbJV3H6Tk4+AHdygY+hA++utgCm0TMacA+CrTYAaLcpIiNeZDgA3FA13jRTjwDZQNAh
 VuIpK819K0vBqu1Olau3ABzHrktQ76uDyxTx/JKhtQY4nnqbiWuJtTRkny/74hw4umMVbWL
 M+sqMlRuu/FfYEX3kP1mlZD0M8hgy94=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589449168; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=nbk7k6YcxRF/fNtf5uZc1WYIVvNCzEcAT1GzK4u40Hk=;
 b=r+TfBwUdsGSjuFk5HE6jx4rWgMKxIpcHLnevpfuLzo6XMc6WpWPZhc7vHJxtiC5QFOoVg
 8PNqbvIEFW3kgIhmoRe0YBpZkm6GuwXmjbiL7xIELM4sIAz8xM8nRhR7Tba/5GOFPndmWo3
 yQZN0EAhamIJO3K5yC4IW8ED1fFKSio=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org; arc=pass; dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 279F8800DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 11:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1589449165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nbk7k6YcxRF/fNtf5uZc1WYIVvNCzEcAT1GzK4u40Hk=;
	b=S8Lj922EVMJHsDK45R0iZwCKYqYwTeWHc7FciRPyCsz3G5FdWy1owejEz0IsSPfcnGGVes
	bk0oVaIc4tpZQc38AP1tFnzna9iQllZ4ks9O9KBp6U7ZMp6UrhvBek0aiditmLpCNmojIg
	zbaW1XHXfpXiTsodjhuQ1mZq5HBbEXo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: WiFi chips/drivers supporting IBSS/802.11s
Date: Thu, 14 May 2020 11:39:22 +0200
Message-ID: <2392919.NNVJBL4L6o@bentobox>
In-Reply-To: <CADSehqPoEQGqdURG0g8OO85Dvb5dL0eExwG+-9uum8=wz9VXsg@mail.gmail.com>
References: <CADSehqPoEQGqdURG0g8OO85Dvb5dL0eExwG+-9uum8=wz9VXsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2043141.RrgemjlQgN"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589449166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nbk7k6YcxRF/fNtf5uZc1WYIVvNCzEcAT1GzK4u40Hk=;
	b=AT3/DIZHQzyVDi7UoyIBSgJzwqHO2UKRtXx/WYv3nemePibTNJeDxIDbYk1cAlACXsgenI
	ct/rJKyqZoX0RSbk3JQBSM9shOtpxx5ERK3oEff5vqlU9HiMi+D1LK6LRODUFP4Rq0rA8W
	TdtiVtuT2W0VbLw4uu6QDM4xnHbiprI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589449166; a=rsa-sha256;
	cv=none;
	b=3VnfZoWqvYuR2GAmaZBUpXRgvcKCCgS2jqql6uiEQ1eFehivRJDoj0mbnchRYNTE14sUaZ
	llggcngD1LzFiN6prJh2gX7DqNCvwRDVbwKrLKRCaXYoQFrdreXc0X4Q1M15BCbp6x4DKc
	3DGB3jxXU95KozWtakxxpokoc9w0HIQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=S8Lj922E;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: EC5DGXUYANHQEOUHSS6UZYXJWKTDEVN7
X-Message-ID-Hash: EC5DGXUYANHQEOUHSS6UZYXJWKTDEVN7
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EC5DGXUYANHQEOUHSS6UZYXJWKTDEVN7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2043141.RrgemjlQgN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 14 May 2020 10:17:07 CEST Maksim Iushchenko wrote:
> Hello,

Please add subjects to your mails. Next time, I will just reject this
kind of mail.

> I am creating a Wi-Fi ad-hoc network based on batman-adv. I read that
> batman-adv is able to work with any types of interfaces, but I still
> have a question related to ad-hoc networking. Will Wi-Fi ad-hoc
> network (based on batman-adv) work if Wi-Fi chip does not support
> 802.11s standard?

Hu? You are mixing stuff up. There is traditional IBSS (often called adhoc) 
and then there is 802.11s (meshpoint interfaces with and without an integrated 
mesh protocol).

> Unfortunately, there is no mention of ad-hoc mode support in
> documentation of many Wi-Fi chips.
> 
> How to check if a Wi-Fi chip is suited to be used to create a Wi-Fi
> ad-hoc network based on batman-adv?

Check for "valid interface combinations" in `iw phy`. Here for example from an 
QCA955x (when I remember correctly)

        valid interface combinations:
                 * #{ managed } <= 2048, #{ AP, mesh point } <= 8, #{ P2P-client, P2P-GO } <= 1, #{ IBSS } <= 1,
                   total <= 2048, #channels <= 1, STA/AP BI must match, radar detect widths: { 20 MHz (no HT), 20 MHz, 40 MHz }

You can see here that it supports a limited number of mesh points interfaces 
(802.11s) together with AP interfaces. It also supports IBSS (adhoc). Just
keep in mind that there are a lot of broken wifi drivers and wifi firmwares
out there which claim to support IBSS/802.11s but fail to reliably receive
or transmit over these interface types.

> For example, is ATWILC3000-MR110CA an appropriate chip to build a
> Wi-Fi ad-hoc network based on batman-adv? Or maybe you could suggest
> any another Wi-Fi chips?

No idea what it is.

ath9k based chips work good. ath10k work also with ath10k firmware in 802.11s 
mode. Just make sure that you disable mesh_fwding when you want to run 
batman-adv over an meshpoint interface.

Kind regards,
	Sven
--nextPart2043141.RrgemjlQgN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl69EcoACgkQXYcKB8Em
e0Y3mBAAoEcpliYMgnG8075sxsz7b7Hj2IHRkp18Y7fQpJSTdW5rv/DiXND3tYNk
90tPuT2UhcscdPAp8uOcIUxy495P8rQ3DlYXnhqxJFfw+D49etSRakUa32U3jXLx
bw0+KK95BZlAVYighSuvGYE7SYPp8rRMJdcH0fA2rmxLUE+qmMbhPZ/xoJdKuBgk
2hz3NUhf5r95HWU2X3S9wpCoKz7UE8I4eEHKT8ca9U7CNl/NW0xr8yujDi81uMHf
nE2VYf7Ol/FtyHbbB63NQ2YnN8iPHFIneUIIRF0Tzvd5m8V+LvQPWaTqSsxGOKVq
I6LWhUf5S3gRlj5OAK8DJYvthVXhBMYmlTC2so/T3+HC1cPSuIYFT7zkAyZB2wa9
ZiyJMCf95TS+f04ZSBG8rAnh+h2PyvdfE+sZfKvjvdiO8yvGFFZq5I7rKO4fgsic
LQto6VzVUlMu+5yqDNxsDnuV9qhgwW8t4AkKQ8HvfdYDBAlEwp38ffqAGtrVPL5N
QUuti1nle2UjvDlYX03J110L19dRuTrsbi4LTT3FOfrRgRHgpUmyQIe8Yh//4mjR
cSk4xwnRNL9C9ZUzYdDsyudNJ74N5n0wFAodx1VkxzcASncCSSMR9O1fm+7+heeo
zt/RqKUZO1RryRkfl6BeBtHREbHxlgPVnJZ1wtMif+fB5idreZM=
=dWsM
-----END PGP SIGNATURE-----

--nextPart2043141.RrgemjlQgN--


