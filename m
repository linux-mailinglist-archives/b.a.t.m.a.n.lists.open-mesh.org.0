Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CF983EBF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jan 2024 09:07:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 08CD083EC6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jan 2024 09:07:39 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1706342859;
 b=thvQsvVLPSkVWixi4uwiZBaNe6cy20J4KKiGztNRzFluLdFozyQKONmkZJnc1VWTBWDXV
 fS7MPzkuv0Bm6XjJWIfChM3FSEEsZeMoGZKfGzMlTSccDF6y1GAgfNXXneO3LiP5Ct4IOSA
 2e5/w7b5jfGEba7wmH7VuUd0wop9bzg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1706342859; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6j7ldOY0z2Dy6Mx0aFNXfvDzOKct/0FiBiEEaBDJVVc=;
 b=M4PFdzOSh2I2xa46A9m9WoGqhcXArfhxMwDXAkGJIXr/BePXTyX5HPBUNqXvjQAlBq3fd
 tnbbr1UdSxEjauhsPIRoIr8mI7kKHrTgBsa9ky/Gz1bff4lSOTT8kkpTBBhkNumj1SB7v64
 KpJmcfZT/ybmpTqXeSE+uVezWRsUOLU=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=none
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F41268042E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Jan 2024 02:27:23 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1706318845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6j7ldOY0z2Dy6Mx0aFNXfvDzOKct/0FiBiEEaBDJVVc=;
	b=F1+AYGEi2fSb/0arH5IoY/wc3UD1w5UkfWvCOLiaHw3V/r0mXr2jwYAlU/QHC70E5SLEBR
	w8rd7DRx507TfyLDT/nqdvlUf2npkkuRxa8HIwLoK+4UKF3UpMxyUS5YGFHTujQCLpNgT1
	eTWI9J9Xvr2XYrG1oa8gFvqf/YnApHk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1706318845; a=rsa-sha256;
	cv=none;
	b=e7f7f/fllR7rV7Jh/JCiRNWTo0eMEW8mB4y8SYbb4grVKY1aU+eS6xSddlZoZxHcLHG/CK
	sNhu56tXU+qObIloGWZscgXtbZW6TmKkOr8Fbv2uQTXcOJhx5JSAn+Id7UIdU6Mp3vtZ5/
	YD0adrMBn4Vz89ah+3aeCG72VuYQCJQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XuycoVZQ;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1251FCE3876;
	Sat, 27 Jan 2024 01:27:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 051B9C43394;
	Sat, 27 Jan 2024 01:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706318841;
	bh=6j7ldOY0z2Dy6Mx0aFNXfvDzOKct/0FiBiEEaBDJVVc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XuycoVZQcAX+YMGCP8hH7xKBfZBFekMjy7Ay7QX+EsypdCq34cDtBPI3appGlPLlo
	 snCbRcoAMXU/LTNr9kDDVD5xHL85bTJCiT0MwH+AoaUSadmvdouJb70SsEEo2KZV1K
	 2lzcXPrA/y/5ff7fR0QfknF1+6LDbgdpXWT0nTkZkzvTuouSHT4zbFHk4ugg1FCXvP
	 oybobEhT8W1JRmGibeU98ywdmZSmKzzQIllM5sG9hoQGVRGI7vYiOGCtD2Cw4HbAw/
	 W/kLeGhw87bwSZrXxHABjw6D+Bc0jsgybkQupL0Q1fTOrO5L9J4UO7fuT1ZMwItWvn
	 S4+q3vmwwF7WQ==
Date: Fri, 26 Jan 2024 17:27:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Cc: netdev@vger.kernel.org, bridge@lists.linux.dev,
 b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, Roopa Prabhu
 <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net] bridge: mcast: fix disabled snooping after long
 uptime
Message-ID: <20240126172720.716689b6@kernel.org>
In-Reply-To: <20240126143607.5649-1-linus.luessing@c0d3.blue>
References: <20240126143607.5649-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: L7I4D2NIHYN7H2ID4HIY6VU74GVLLPEG
X-Message-ID-Hash: L7I4D2NIHYN7H2ID4HIY6VU74GVLLPEG
X-Mailman-Approved-At: Sat, 27 Jan 2024 09:07:07 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L7I4D2NIHYN7H2ID4HIY6VU74GVLLPEG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, 26 Jan 2024 15:36:07 +0100 Linus L=C3=BCssing wrote:
> +static inline void br_multicast_query_delay_expired(struct timer_list *t)
> +{
> +}

nit: let's drop the inline, if it's to suppress a compiler warning
under some configurations - it's better to put an explicit #ifdef
around it.
--=20
pw-bot: cr
