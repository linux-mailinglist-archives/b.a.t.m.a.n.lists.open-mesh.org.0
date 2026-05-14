Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHJXGO6IBWrGYAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:33:50 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DB953F5E1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:33:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 510A585BF5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:33:49 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778747629;
 b=WZVnJHPFC8eG9CEpnia/k5kv1W1lUL5G43XIEyp6Uc2kkHoleY5J7hFB2VUY5Lu60rdsW
 9iwCCxH3ABD0tMFO7f8G+qO2EGNT16H/z9ktNU2W9lhx+Amu8270eyysk9L1b6mWVxgGS4k
 APh9zF0PbvHT5i8+/uzbVCtlMR/Zvgk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778747629; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pOC6KBcYvK7mpcWbdDYjYFsPQAOHt1igs+BK4MfBbAY=;
 b=ZCDrn2Jvv/STYlYWxsLElznmA4eiubLe615S9nE7DmE41uNVwT4rrLNoPFbdQOa+PBgIV
 Tgu5bamMxs1lGgvejqJ2l/szw1/Sa+uEuaUG7vCVZlZE8kvhc5zvr26aI8OUt52aFdeRD85
 JjGF2GK/vimP0rRDMYowwIB1TddFYwI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 427F4802D2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2026 10:33:09 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778747600;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pOC6KBcYvK7mpcWbdDYjYFsPQAOHt1igs+BK4MfBbAY=;
	b=TqEb4x67KB6yBYh1btHVu1SPN8fMBIY5XbMVO8SpIdhnul0Y28F6pKIECmRUfXf7yQisXJ
	gcPOKRDQ4Q4b0U4CJ9Mu2hvBZ6CtloaAVID5wxigJZzxL17nIgqR5o8oOXXoiIGHUEH4oq
	aik5BPDl1MuTEgqq1dT9U5s+h2Y9kS4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=SHCU9PZW;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778747600;
	b=3jKfNodB5lxYAyaiZyO4w3jlIOoLuf7O2e5xROPiujZysrDtXRfoDCVY0mpUIq7qe6TcTV
	LY46agxnxdb6oXyP+DRJ26G4fNBmHJW7H5+oOZTOHnOMxuFvxzCWZF383xgn3OE4Ba847/
	VXnI2/zrepKwSflaalOrgROkjGd0jyM=
Received: by dvalin.narfation.org (Postfix) id B0F7C200D8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2026 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778747588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pOC6KBcYvK7mpcWbdDYjYFsPQAOHt1igs+BK4MfBbAY=;
	b=SHCU9PZWCeiV8L5kGhxr05E8ANhXj2Toxt1P6bjHWdsrQByv4VEj3NRDrpEI8Rd2vfuLw2
	JS5bxEfq+/+TLXtY0XrEWx5mOBpZrmsGpq+pTGWxQAnm7Tz18py7d8utanBS69cw7wzixg
	6Zg7YYzo6aWqnLMnGcUjgN86g6xPIzY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv] batman-adv: tp_meter: fix race condition in send
 error
 reporting
Date: Thu, 14 May 2026 10:33:05 +0200
Message-ID: <5993633.DvuYhMxLoT@sven-desktop>
In-Reply-To: <20260513-tp-reason-missing-v1-1-752a882bd61a@narfation.org>
References: <20260513-tp-reason-missing-v1-1-752a882bd61a@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6267779.lOV4Wx5bFT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: VNW57LABOLX4XGWXACHLBUAEXLO3Z4CB
X-Message-ID-Hash: VNW57LABOLX4XGWXACHLBUAEXLO3Z4CB
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VNW57LABOLX4XGWXACHLBUAEXLO3Z4CB/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: F1DB953F5E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[narfation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:dkim]
X-Rspamd-Action: no action

--nextPart6267779.lOV4Wx5bFT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 14 May 2026 10:33:05 +0200
Message-ID: <5993633.DvuYhMxLoT@sven-desktop>
MIME-Version: 1.0

On Wednesday, 13 May 2026 23:57:52 CEST Sven Eckelmann wrote:
> +       /**
> +        * @stop_reason: 0 when sending is ongoing and otherwise
> +        * enum batadv_tp_meter_reason
> +        */
> +       atomic_t send_result;

Should have been @send_result
--nextPart6267779.lOV4Wx5bFT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagWIwQAKCRBND3cr0xT1
y6KtAQCELiTtjggqQwcrJRvj6KTYu4AnSRHYyL8cKCKw9NZX6wD/Yt+dj3cap1xa
NdWreAuiu9T8DuGNDSUSmIhPNc479w8=
=2cYa
-----END PGP SIGNATURE-----

--nextPart6267779.lOV4Wx5bFT--



