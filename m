Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FDB9FEB0C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Dec 2024 22:39:07 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B54B583EF0
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Dec 2024 22:39:07 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1735594747;
 b=GNgEAjc48PylTWZ0jR7AQfsNdTUZnY/gr0PSrhz6ms+/ve9ILLuNQDXb7/WVCOm2jEXuf
 bdx15cxf+DsAP919CbU3+B7A0KnSWJbV2/zsE5wai6T3b2uRBAlyobTp9/wWRZbgZZKOwdE
 u7BoQm12DFUnEk+F+k4L6R95NfSvIQs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1735594747; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0yAE13vAD/SAyO+o/N2jq7jDKnGZU0Aj7+YAZy3+yFU=;
 b=q1Sy3U2msIynMtZm9gEt5XTF4CXtJ9N3kWq/f4JvMvKqC/41RqJSRnZoNNhJ6V1RCV7hP
 ZLhP8fV7r3T93L/yF8BBiOAb2B7rur/2V/kax4HA5+dMpKOmHanUQYEKW68zsVzoA14OwNC
 b0AorC17R/q/QWLvG1H/K6RlB1ZHe8s=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 04D578180D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 30 Dec 2024 22:38:44 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1735594725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0yAE13vAD/SAyO+o/N2jq7jDKnGZU0Aj7+YAZy3+yFU=;
	b=Vh8xbiwSo5zunrgURPsy1pAHB9lWRR9/dCwdgbVfCBSTSn2rdOEndWEidxDCkDI+KGTXaw
	3S75jgvJAD593O9j+Aifymayq+gzS5wMeQTwJlNV8XWmDxZ7pluSn1pPIlh6d9p+dxPZnW
	fs+hstJQ+UyE2Cqbpu72mo032G20w04=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1735594725; a=rsa-sha256;
	cv=none;
	b=lGxr555mLVOEVbwiIOZHcet4XLRzFMjkPS2S1r7Hn9Dd7ng8fZT/kXMgHKrz9maB7IXnsH
	zzDxvbBkf8Z/BWKqNro+/AtV6GrasIPn0GMbiy5SUHJkJ2eQetGMV1MhNueIJQCuatI67/
	JG7F9bqlxadachPNPHbqkWddfw6lMb4=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id D3254542084;
	Mon, 30 Dec 2024 22:38:43 +0100 (CET)
Date: Mon, 30 Dec 2024 22:38:41 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Marek Lindner <marek.lindner@mailbox.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] MAINTAINERS: update email address of Marek Linnder
Message-ID: <Z3MS4X6MvkspTdBY@sellars>
References: <20241227091912.2528930-1-marek.lindner@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241227091912.2528930-1-marek.lindner@mailbox.org>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: 2DGQQOCK2Z4YA7ERUSHQR7XPPJYNT2ZX
X-Message-ID-Hash: 2DGQQOCK2Z4YA7ERUSHQR7XPPJYNT2ZX
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2DGQQOCK2Z4YA7ERUSHQR7XPPJYNT2ZX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Dec 27, 2024 at 10:19:12AM +0100, Marek Lindner wrote:
> Signed-off-by: Marek Lindner <marek.lindner@mailbox.org>
> ---
>  MAINTAINERS           | 2 +-
>  net/batman-adv/main.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Would it maybe make sense to also add a .mailmap file to
both batman-adv and batctl?

This is useful for tools like "git shortlog -sne" to associate
multiple (potentially deprecated) emails to the same person.
(Or even multiple author names to the same person, like it
sometimes happens with my Lüssing vs. Luessing surname.)

There's also a manpage for it, "man gitmailmap". And .mailmap is
already used and present on the upstream Linux kernel. But it's
missing for our off-tree batman-adv repo right now.

Regards, Linus
