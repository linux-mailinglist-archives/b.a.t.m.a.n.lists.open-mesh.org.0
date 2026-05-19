Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFhdEGshDGrhWwUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 10:38:03 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F8A57A42F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 10:38:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9CE9080BAE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 10:38:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779179882;
 b=wtbby/4s7HSEMPqNphidoLavFVkd7BQcTe56GchBKZWa9U1WxKoplnllM8ZnhZ1AE9kLy
 YhR40L11Up4qVFhiluqCTG2PL4N0zU5WmIGxkXSSM5kc/6OiOlrebC/BtS5AjiLt74gA34s
 pWrUuFG97cFxRuDxseozSKazB2Uel38=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779179882; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ZnzxoHNrbiLFBlPqCsYTZbX33no/2D7ec4ZZH8yzyyM=;
 b=QvbbUSv9Qx2iL2kU8CicdLFRGf1oB7RBXd3AerRKXIQ/AopSXnIpYAGTd/qupfLgSxhRC
 pp5zT7dSsthHdJQl+mIkXCcLI+JG4NiveTvB9vxD/JPskmGpZ022lYCMUp1RDzFmMK6fEW2
 H2d3DBGDncpTsR1qddQtfnMCUvZ13WY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C34438042C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 10:37:38 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779179868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZnzxoHNrbiLFBlPqCsYTZbX33no/2D7ec4ZZH8yzyyM=;
	b=ULkAPYW0bLGoDnqjGLs2NSsau33FkCz6bbD6gozmy5fgnPSVioATYboAocbG8dMAkbkU+1
	0iADqVi6mZ3kfyf8mIb5zi208aVcVPAaoIX4F1vhaj6H1FkdWKNb2ujHWKaGeuwZJXLI/h
	36ZNjcn97rTwyQELTAT9HD9bxy8lbGA=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779179868;
	b=OYzgklLu5mHITegEe9Q9LXoMWVAN/bzEpOYlwym2ZMwoa8scQkRebZQ9xAkNlFYUAD8j61
	8q9sxfdpMfKCY1fhLgwqkUofnZOwhi75eVyKzlioQoarcrcQ/4L6CndASyeQ3GjaW7UZdB
	ie4OuPHWX1hz5gnR1/tcGVC5w6ChARA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yRIhkzjy;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id F28231FD57
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 08:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779179858;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZnzxoHNrbiLFBlPqCsYTZbX33no/2D7ec4ZZH8yzyyM=;
	b=yRIhkzjyylB6jfLO8bdteGvrqh5TqjENZeW8vHh/E0x8DWmXtwOiYYYjC5Y96xnlNCRgeY
	RR+zjgMDxtXjBpFX7BZZh3UFUStINd7o5U/+AacdRN9usvrQxb9hINi9Rynd3gjciwSKa1
	v+EHFYAJyyqkpTcDgGEIj7SVMteOt7Y=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH RFC batadv v2 0/5] batman-adv: allow to specify limits for
 remote
 learned objects
Date: Tue, 19 May 2026 10:37:34 +0200
Message-ID: <3036655.mvXUDI8C0e@ripper>
In-Reply-To: <20260519-resource-limit-v2-0-489c3c919a54@narfation.org>
References: <20260519-resource-limit-v2-0-489c3c919a54@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13100678.O9o76ZdvQC";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: QJAG33UB7V23ASCWXZSCSQEA572OKSJZ
X-Message-ID-Hash: QJAG33UB7V23ASCWXZSCSQEA572OKSJZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QJAG33UB7V23ASCWXZSCSQEA572OKSJZ/>
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
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Queue-Id: D4F8A57A42F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart13100678.O9o76ZdvQC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 19 May 2026 10:37:34 +0200
Message-ID: <3036655.mvXUDI8C0e@ripper>
In-Reply-To: <20260519-resource-limit-v2-0-489c3c919a54@narfation.org>
References: <20260519-resource-limit-v2-0-489c3c919a54@narfation.org>
MIME-Version: 1.0

On Tuesday, 19 May 2026 09:02:14 CEST Sven Eckelmann wrote:
> For the moment, I just want to demonstrate how this might work with some
> example code. I didn't invest any time to actually check out the other
> items in the list. So, please consider these lists as vague suggestions.

Please also consider the commit messages as placeholder :)

Regards,
	Sven

--nextPart13100678.O9o76ZdvQC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagwhTgAKCRBND3cr0xT1
yzuTAP4hklHkgdBm9mo/pgF8jwlGs0Y1buax55npmSxu3AweHwEA9nEtm3yZ/H1a
O4b8N9N2LgOfY8ll8FVRtzTi1OCWlgk=
=XIBa
-----END PGP SIGNATURE-----

--nextPart13100678.O9o76ZdvQC--



