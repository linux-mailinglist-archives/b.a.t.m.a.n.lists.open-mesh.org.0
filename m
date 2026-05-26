Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBZrLryrFWrgXgcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:18:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 690E65D751F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:18:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9AF3E83B11
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:18:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779805115;
 b=b+WgYKnpUJkVBpAwpkpx71qxXBwUgTpyWgUr4GooNNfFNnFjDNYvvUfaEiLdTg5EsiA74
 GSpdjUr7smXG/D2vIIvABEgoz0k+l38dMiMtpFSRX9XQf39wkEFITdRIJi2agJmzQVNBtvC
 NI0q12zghyOVxnhx5rr2bBXP6/lyUaY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779805115; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PcA7XtyXGltk5H+OKUZ/7bSf2zntXwWFan/bkQ0o9cE=;
 b=RyD7Uay/r9KvJBfeiiuu72hPGhyLo3oMF43ZfLEzUUyeW9nD0hkyJmL5kfmXnEiP5XLBp
 vsly4uBUw4Y221nDSb8+enUmLnxJPXPk4fCbPot8QiHEyxTQnZG8u/6JrnWRmOt7ma8jb2P
 VpCYHzeewOfo3+i2zK6DQHAE/I09zuY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E34D480944
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2026 16:18:12 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779805093;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PcA7XtyXGltk5H+OKUZ/7bSf2zntXwWFan/bkQ0o9cE=;
	b=uvPn5RYjC9pZc0WXQT4uQ0PZq/jAnewHPwAxgqvaSH8IjAem3U2UFDKjrUvp6l65XhNcm3
	DbEWPZlGqmZkuGIZ4AvCGwELxKQ5HlDkKc0hJBdNUFJMwFSWB3EUjb038CbfAIpAh92Ufc
	jLWw+K+L//eUiXxh0aJrhBIjdWnlPso=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779805093;
	b=LaTisjhmjA6n4B3cEc4UT/mSfZVDRWdB4i+4TGZz+fwaaomun4TrBMdIp5wjxRSEeDpgBV
	CT6knFDzofRQYBRVZMkq86L1cBwqV31WZ1v52ZXJSj++o/1XMNi3I/V66gOu1gDkX+iOdN
	5y7rC8yjxfxOFL29QiesBm/1VEn7kJE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nMSqzbZz;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id D0A4E1FE5D;
	Tue, 26 May 2026 14:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779805091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PcA7XtyXGltk5H+OKUZ/7bSf2zntXwWFan/bkQ0o9cE=;
	b=nMSqzbZzX9/xIcSgQFQ9WikWFppvKIDoWUqk3COdeXGjLQ8fkttap/NtBHoqRsUj+0E+eK
	NL382xGfq/VqQZSBQQ70EdIyr0mDSk4d+LNaBfSIPc7DPCGQAKyH5PhlVpbcCZNT9hf1fA
	VIn5LdxB6oh+1qSCv0T79Ln04eqZrBY=
From: Sven Eckelmann <sven@narfation.org>
To: =?UTF-8?B?wq3rsJXsiJjsmYQgLyDtlZnsg50gLyDsu7Ttk6jthLDqs7XtlZnrtoA=?=
 <swan2718@snu.ac.kr>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 horms@kernel.org, Tejun Heo <tj@kernel.org>
Subject: Re: [PATCH] batman-adv: fix DAT purge use-after-free on teardown
Date: Tue, 26 May 2026 16:18:05 +0200
Message-ID: <10856691.nUPlyArG6x@ripper>
In-Reply-To: 
 <CAL3z5EbfEeMn-2_JrvcXRtuKTtruEf+8MX9tCmn-N9edvvrjwA@mail.gmail.com>
References: <20260526064835.2233822-1-swan2718@snu.ac.kr>
 <14018241.uLZWGnKmhe@ripper>
 <CAL3z5EbfEeMn-2_JrvcXRtuKTtruEf+8MX9tCmn-N9edvvrjwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2352248.iZASKD2KPV";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: S7P4JFDYR4NGFKNLJHGPFDMQ5XJUR6ID
X-Message-ID-Hash: S7P4JFDYR4NGFKNLJHGPFDMQ5XJUR6ID
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/S7P4JFDYR4NGFKNLJHGPFDMQ5XJUR6ID/>
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
	RCPT_COUNT_TWELVE(0.00)[12];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,syzkaller.appspot.com:url]
X-Rspamd-Queue-Id: 690E65D751F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart2352248.iZASKD2KPV
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 26 May 2026 16:18:05 +0200
Message-ID: <10856691.nUPlyArG6x@ripper>
MIME-Version: 1.0

On Tuesday, 26 May 2026 15:56:58 CEST =C2=AD=EB=B0=95=EC=88=98=EC=99=84 / =
=ED=95=99=EC=83=9D / =EC=BB=B4=ED=93=A8=ED=84=B0=EA=B3=B5=ED=95=99=EB=B6=80=
 wrote:
> Hi Sven,
>=20
> You're right. I re-examined __cancel_work_sync() and confirmed that it
> internally disables the work before flushing, so the re-queue race I
> described does not exist. I'll withdraw this patch.
>=20
> Thanks for the review.

But you said that this was reported by syzkaller. I can't find the report i=
n=20
the official list [1]. I am guessing you have a reproducer in a private=20
instance and tested with it. And if you tested your patch with it, you have=
=20
found that your patch fixes it, right?

Can you give us more information about this to let us figure out what is=20
actually going on?

Regards,
	Sven

[1] https://syzkaller.appspot.com/upstream/s/batman

--nextPart2352248.iZASKD2KPV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCahWrnQAKCRBND3cr0xT1
y+YjAP4mjdybqYAhYNFHxwB50gsr7/IZmrwAhlyRjOI5weUo7AD9Hw8JGIxkIEgT
zzKWPbt/x5y3Y44n01Itxw4BVjCYtA8=
=zlnD
-----END PGP SIGNATURE-----

--nextPart2352248.iZASKD2KPV--



