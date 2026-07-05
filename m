Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kY+GNNdSSmp1BQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:49:27 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A9E709FD8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:49:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0LlKv1CY;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 44490842E5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 14:49:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783255767;
 b=RxcZc2vNeoHhm87k8F+vqaEIuN3ZA4h2RA7RtBxAhEWMwN03FszR4v1mxg4l+BPmFhO1L
 KwypLf/7nzTzOYVBbZwli/0VAa6sZ4YdQhQ1GQbIg6lP4CO1WaPyp1rrOXrHnFW0rMXa+mX
 xn+Fpw+28aX27EaKxPn/yJB1n6GsOLc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783255767; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gG5YEQQ0ya2xrSmb4qkA9sgc8dQP/I7KKnN0q2GSBfw=;
 b=nWHifdUfu4Kos8r1z3l2F6LE+3vnFQ5pVO1popJVz0iGuE257xiIckbLs6acRuRw1EDqG
 t196HMEihlaH+Lc+4enzarwYGJW2HHmvfDy806lv4RsSMx28ZK3mikq9/U1s+En35ts+Erc
 x31X10zg5U54LI7m1Dh3NLcVamj8/Ak=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 97CCA8325C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 14:49:00 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783255750;
	b=g8hUW6OzRIS3HqHZVTPT6RK+yMcizp77c3dFBhA/T3j8Ce5MKLRpiQW521rfu2HlYJ0Z1l
	uscx2QbvoB+W4rc0A2SKs5cvszj+rC4XzzCKidFCAOCsa2rYGVC6NFW+PXvYwreScCeIqF
	a1Xj/mvLyEJK+ijDzFjvOeueuNMfGbg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783255750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gG5YEQQ0ya2xrSmb4qkA9sgc8dQP/I7KKnN0q2GSBfw=;
	b=sy0RN/ZJevF/KactBkDlpKHq4Da7rUQpKY01GNP1BtRzbZ+9X/s+40GkmmYHnDNrk7zBfW
	VrhNrwytXyG2sD92VV7n8XS1fNZCiIp5aL4tosnl1m6Qk6jJdGCVcimgavkTFJi1DsolB6
	jZxpxbP2w/DUWV7HgKeT9fs6BXiNsXo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0LlKv1CY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 6A34B201CF;
	Sun, 05 Jul 2026 12:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783255739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gG5YEQQ0ya2xrSmb4qkA9sgc8dQP/I7KKnN0q2GSBfw=;
	b=0LlKv1CYuObwup3P7Tqa4zS/qbTsYoSuyUxTkPX/fZ1BK4vFdjTqjJYvOhu8LNlsL3LRIh
	vXv/wL5U0FhdGQq+2XJCf6igXvAhV2H0YNVnHVFM5M0F3rcaa5Vz5/YWSjukSIWhB0JYs4
	AO36QQJo5Ou0vPPWgCBLJj+FLZiXGBQ=
From: Sven Eckelmann <sven@narfation.org>
To: Amitesh Singh <singh.amitesh@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, marek.lindner@mailbox.org,
 sw@simonwunderlich.de, antonio@mandelbit.com, linux-kernel@vger.kernel.org,
 amitesh.singh@chargepoint.com
Subject: Re: [PATCH] batman-adv: fix throughput detection for VLAN interfaces
Date: Sun, 05 Jul 2026 14:48:56 +0200
Message-ID: <12951327.O9o76ZdvQC@sven-desktop>
In-Reply-To: <178325531132.27339.5219063208417341297.b4-review@b4>
References: <20260705122134.62809-1-singh.amitesh@gmail.com>
 <178325531132.27339.5219063208417341297.b4-review@b4>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6033412.DvuYhMxLoT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: U3QFOEEYBZINTWWO7Q4C3HVS35SIF2JG
X-Message-ID-Hash: U3QFOEEYBZINTWWO7Q4C3HVS35SIF2JG
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U3QFOEEYBZINTWWO7Q4C3HVS35SIF2JG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.11 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:singh.amitesh@gmail.com,m:b.a.t.m.a.n@lists.open-mesh.org,m:marek.lindner@mailbox.org,m:sw@simonwunderlich.de,m:antonio@mandelbit.com,m:linux-kernel@vger.kernel.org,m:amitesh.singh@chargepoint.com,m:singhamitesh@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,sven-desktop:mid,narfation.org:from_mime,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73A9E709FD8

--nextPart6033412.DvuYhMxLoT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Amitesh Singh <singh.amitesh@gmail.com>
Date: Sun, 05 Jul 2026 14:48:56 +0200
Message-ID: <12951327.O9o76ZdvQC@sven-desktop>
In-Reply-To: <178325531132.27339.5219063208417341297.b4-review@b4>
MIME-Version: 1.0

On Sunday, 5 July 2026 14:41:51 CEST Sven Eckelmann wrote:
> 
> Duplex handling was not copied to this function

Regarding this remark: duplex handling is also on top of the upper device and 
is not neighbor specific - this doesn't really make the handling easier.... 
but I think we can ignore this remark for now.

Regards,
	Sven
--nextPart6033412.DvuYhMxLoT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCakpSuAAKCRBND3cr0xT1
y7UbAQDroIxbNBYZ4KRB+mD21BctsgHeBBh0MQERwHAQYu/rcwEAys3uazSq9TjK
547NQcSh0Wi55/WTCyq6nCSajXWjAQI=
=eKkM
-----END PGP SIGNATURE-----

--nextPart6033412.DvuYhMxLoT--



