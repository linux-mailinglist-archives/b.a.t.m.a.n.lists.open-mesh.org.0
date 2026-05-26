Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UH0dCx1MFWoIUQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 09:30:37 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E35825D1B5B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 09:30:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B6253830D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 09:30:36 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779780636;
 b=s8ATzvk1I111L6eUlfrh0cCgQRsVr2CLpK9tPF2uNmiCkYOsXD8K6F0QrDpIcrBtRFfBm
 V+56nwcBT9EfFnHk9/VGcPlIsEPyJd0lXQAVnefS2bWxneU63bJDOlXW7xSsaJ4Kp8BXbfs
 Geb0Ul43Oa5trF1HN8rDpOs02aAPUtw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779780636; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=NvBuL1voqSEN0oLWaKKw+NjOufd3aAtSPxxpVUGOPIQ=;
 b=H7lVRY9hg2bJ5eb5Axq2P06PJcFU/UWwdGxiU+3f5WJ0q1q4QUTM1xBtKqXq7AcYJRGoE
 e9ms7hjbZaz0QzgE7wivtlAT4zfT3xIKJAkSGjTr9/YIpVELAulz/CEeg9qbKjLPRsHXjw1
 aNRHfZ5jFJl7wOLQhCIEIwj+JrtgJxM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 166EA807B0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2026 09:30:11 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779780612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NvBuL1voqSEN0oLWaKKw+NjOufd3aAtSPxxpVUGOPIQ=;
	b=bbOhJdTClJ2jBEhrTwymt6su8ydn7BhIlmlTI7cM719AKO5i14eCDLhMHYZQegGVBjzeCR
	xyphNQm/csPZAzL4ev1pKDN7Wh9D0QphqKyWv0Q1Si6qR7NCctnbyNsn5cJ8vwi2vPyr+M
	1BRxbJStif6p2+//ND8InLiwL8IaZBY=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779780612;
	b=UTpS8updxqilqBUtCK8WL+gm6/v9qUN9XNwrDoA9rjZTxSyWUrsE1Hc+KFt/S1XjOLCgUF
	kqiDRLMG0DKMjTwZ53EUPXu2vlgpbpf2yi4KA+xspHZYsCEFtLrQVlzE+gz+PrkDXsEI+k
	x6wnNhFafyxzcyOf19SWVytxwJ1wng0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JtjTg5IY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A520C1FE2A;
	Tue, 26 May 2026 07:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779780610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NvBuL1voqSEN0oLWaKKw+NjOufd3aAtSPxxpVUGOPIQ=;
	b=JtjTg5IY5niVsR9IQBrb0/h/cOAmb0mBqCv0HPtFh+KU4iuBaSingsT5CFBe3Zr0EqjbJ3
	1BqyK3Tmmn6iuUkfiEMxzSTNuXZ/amCyAeMiiYu8CAsEX9WI1VVu1dvu/kdjOqgpulq+8Z
	sjY1NS2arWDN7DZRWtwjRArZi5XOBno=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 Soowan Park <swan2718@snu.ac.kr>
Cc: marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 horms@kernel.org, Soowan Park <swan2718@snu.ac.kr>, Tejun Heo <tj@kernel.org>
Subject: Re: [PATCH] batman-adv: fix DAT purge use-after-free on teardown
Date: Tue, 26 May 2026 09:30:07 +0200
Message-ID: <14018241.uLZWGnKmhe@ripper>
In-Reply-To: <20260526064835.2233822-1-swan2718@snu.ac.kr>
References: <20260526064835.2233822-1-swan2718@snu.ac.kr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3046581.e9J7NaK4W3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: SM4HJH7XQJAOZ6RZOOYNJ7DTZWPMUNPF
X-Message-ID-Hash: SM4HJH7XQJAOZ6RZOOYNJ7DTZWPMUNPF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SM4HJH7XQJAOZ6RZOOYNJ7DTZWPMUNPF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Queue-Id: E35825D1B5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart3046581.e9J7NaK4W3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 26 May 2026 09:30:07 +0200
Message-ID: <14018241.uLZWGnKmhe@ripper>
In-Reply-To: <20260526064835.2233822-1-swan2718@snu.ac.kr>
References: <20260526064835.2233822-1-swan2718@snu.ac.kr>
MIME-Version: 1.0

On Tuesday, 26 May 2026 08:48:35 CEST Soowan Park wrote:
> batadv_dat_purge() is a periodic delayed work that re-queues itself via
> batadv_dat_start_timer() at the end of each run. When the mesh interface
> is torn down, batadv_dat_free() calls cancel_delayed_work_sync() to stop
> the purge work before freeing the DAT hash table.
>=20
> However, cancel_delayed_work_sync() leaves the work in an enabled state.
> If the purge work is currently executing and re-queues itself before
> cancel_delayed_work_sync() internally marks it for cancellation, the
> newly queued work escapes cancellation. This re-queued work then fires
> after batadv_dat_hash_free() has already freed the hash table but before
> the pointer is set to NULL, causing __batadv_dat_purge() to operate on a
> dangling pointer that passes the NULL check, and spin indefinitely on a
> spinlock in freed memory.


You are talking about a re-queue by batadv_dat_start_timer(). This only=20
happens when the DAT gets initialized or via the worker (batadv_dat_purge)=
=20
itself. How can the worker which is cancelled (with sync) re-queue itself?=
=20
Isn't this breaking a guarantee of cancel_delayed_work_sync() or did I=20
misunderstand this part of the documentation?


"This is cancel_work_sync() for delayed works." [1]

"Cancel work and wait for its execution to finish. This function can be use=
d=20
even if the work re-queues itself or migrates to another workqueue. On retu=
rn=20
from this function, work is guaranteed to be not pending or executing on an=
y=20
CPU as long as there aren=E2=80=99t racing enqueues." [2]

(the part "This function can be used even if the work re-queues itself" is
the important part here).


> Replace cancel_delayed_work_sync() with disable_delayed_work_sync(),
> which additionally disables the work so that any concurrent
> queue_delayed_work() call from the running batadv_dat_purge() is
> silently rejected. This guarantees no re-queued work can fire after
> disable_delayed_work_sync() returns.

I have no problem with using "disabled_*" everywhere (I even have a pending=
=20
patchset to use it - just to avoid problems with code changes in the future=
).=20
But since this is a fix which I don't get in the moment, I would like to=20
understand the problem you are describing better before applying it.

Regards,
	Sven


[1] https://www.kernel.org/doc/html/v7.0/core-api/workqueue.html#c.cancel_d=
elayed_work_sync
[2] https://www.kernel.org/doc/html/v7.0/core-api/workqueue.html#c.cancel_w=
ork_sync
--nextPart3046581.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCahVL/wAKCRBND3cr0xT1
y38WAPwLlc/180rzpcmO7N4qmYg2RQ8w5oxAKnvdfgyknBNaKwEA8cOumQjNSrey
d3jt9GblIoJWiBGN3V2wgfsHvDwVWAI=
=KaNu
-----END PGP SIGNATURE-----

--nextPart3046581.e9J7NaK4W3--



