Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F11EEB50
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Jun 2020 21:46:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0CCAF80BBC;
	Thu,  4 Jun 2020 21:46:48 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A522080286
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Jun 2020 21:46:44 +0200 (CEST)
Date: Thu, 4 Jun 2020 21:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1591300004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hjhgbM9jopLEsyqtrwgiOAnQ/EYZ86+HYk1LnoeLiQs=;
	b=cSgVr+Hmdquj7JnYFC8+kztkYwVRmKY93B0UH/qMGfyAYluqvNnQlIgbS1qATlnPmcZZlg
	TPF2YWn/KR3ljP9T+OYhvxcN2nlguEpl0LZ0WnGkyN42zGhhy/cA7vetpcYld01aRcVcJw
	C9FUGqmSc+AWUGKujfN5LuuHWotE/WwFy9lhQnfbne3OIvmTItOauaRN+7tqECT4LysyhL
	EX7EgRERV+JFjMtjakF8/l+gZpj6ocI1q5zIaTVEGP/8fyj0yI7RWtX8Edj0kbt0IAl6bi
	6MbrDlNwZIcyU8N97d04FN5wmEQVwIqYlpcLV7/v9ggsXBxiCYT9NWvPuNnJcw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batctl: Add per interface hop penalty command
Message-ID: <20200604194643.GA2311@otheros>
References: <20200604194353.2656-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200604194353.2656-1-linus.luessing@c0d3.blue>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591300004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hjhgbM9jopLEsyqtrwgiOAnQ/EYZ86+HYk1LnoeLiQs=;
	b=XeoZHp911vNuHt9+uRIkkAstOoxvtFmUTwaN2mr1Fm0yFs7pMRIBFSR/Vk3k1OJwkghhYD
	f46WbSIyiZu94UWPkcRCtO2d1DKot7K9JYDkuZyHkx9tu7uba+nwC3tirVfYVwqc0B7R92
	qDKRmrjtVZklDhfGUQnDtfRYvrqB84U=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591300004; a=rsa-sha256;
	cv=none;
	b=QOctsMwhyzZb6MTEWXSDNxWKkM/NpXWsjpL7ZNYi64OX3afsnkhXGWaRh4Y7jKaiPiLZFn
	WYszVW80vgoLFa8HcOu03eX/isf0tNMXKquy+Z3UKEoCVDcjNGl9+mbW4+Pprv9svHdcg7
	dnE6MjjdBVazRJ+7IZPtLq5zkau8Eng=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=cSgVr+Hm;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: APXS3TXEGVUHLWVK7JG4SJQIM7DW4JJI
X-Message-ID-Hash: APXS3TXEGVUHLWVK7JG4SJQIM7DW4JJI
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/APXS3TXEGVUHLWVK7JG4SJQIM7DW4JJI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Jun 04, 2020 at 09:43:53PM +0200, Linus L=C3=BCssing wrote:
> This patch extends the hop penalty setting to be configurable not only
> on a node scope but also on a per hard interface basis.
>=20
> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> ---
>  README.rst    |  7 ++++++-
>  event.c       |  4 ++++
>  hop_penalty.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  man/batctl.8  |  4 ++++
>  4 files changed, 61 insertions(+), 1 deletion(-)

Changelog v2:

* merged if_hop_penalty.c into hop_penalty.c (saved some duplicate
  code)
* added and tested hardif event monitor for the hop penalty
  attribute
