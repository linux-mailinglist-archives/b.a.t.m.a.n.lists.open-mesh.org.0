Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EA52743DC9C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Oct 2021 10:03:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C015B825F9;
	Thu, 28 Oct 2021 10:03:07 +0200 (CEST)
Received: from out1.migadu.com (out1.migadu.com [91.121.223.63])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 99AC88083B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Oct 2021 09:49:16 +0200 (CEST)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1635407355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fne1I6sZMLlmiy4nvI7nvLT9h/IwBGc2thHLPckPEso=;
	b=e+gZIM7qMOlsJl8skuf96rx/LekaJPltAErI6phbbo9R1McOCkNRbQ9L/VtylWg4lfcwtY
	n8YRDb7nn9BchfcIRreOO7y1ReM+QbYFjZ9gMvoAiGLkBQK3d/EZhQysQ8bZtS7RFjeE/m
	iTlez484XXbkXJZmvyU2d2G2Q7yoc3U=
Date: Thu, 28 Oct 2021 07:49:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: yajun.deng@linux.dev
Message-ID: <6da1057ad867699815cef87cb2a79057@linux.dev>
Subject: Re: [PATCH net-next] batman-adv: Fix the wrong definition
To: "Antonio Quartulli" <a@unstable.cc>, mareklindner@neomailbox.ch,
 sw@simonwunderlich.de, sven@narfation.org
In-Reply-To: <da6fa493-0911-ca3f-16c0-380bc35d8317@unstable.cc>
References: <da6fa493-0911-ca3f-16c0-380bc35d8317@unstable.cc>
 <20211028072306.1351-1-yajun.deng@linux.dev>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635407356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Fne1I6sZMLlmiy4nvI7nvLT9h/IwBGc2thHLPckPEso=;
	b=oYD3crwXXBV0PEvk7NYO96pMrg3t++rYrjgePJR/zF1elghbkSjTON0pGxHWFR73SHuaRu
	8ftzTSxDZXheJGamymzZuBKbKF5xwOPOb5sUOHcXY/pRukMIdIn5nWDbPuBW0eTHVnHuNQ
	j+JOZ8CTo/TaqW/zIFGE2qwJ0wSbL/E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b=e+gZIM7q;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (diktynna.open-mesh.org: domain of yajun.deng@linux.dev designates 91.121.223.63 as permitted sender) smtp.mailfrom=yajun.deng@linux.dev
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635407356; a=rsa-sha256;
	cv=none;
	b=XcTE7NnAScvJthr+d1alCX4JjkviU+87xoVzHNCGc3VeTO+QrjlpD0B6pOtb2jUu8DpwNL
	NwU59hJLM0E+s5XS59ui8dPqOKIzLdylLcaUgqeZbEjICJ6bh8wA9ziEnNISava6+qbeyB
	oP0KTHTe2ju3E3RXaqIvHzT1D1uvetw=
X-MailFrom: yajun.deng@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 7NYBBY6U6OHUW3YJEKY4EUU4IQ76XOTL
X-Message-ID-Hash: 7NYBBY6U6OHUW3YJEKY4EUU4IQ76XOTL
X-Mailman-Approved-At: Thu, 28 Oct 2021 08:03:06 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7NYBBY6U6OHUW3YJEKY4EUU4IQ76XOTL/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

October 28, 2021 3:35 PM, "Antonio Quartulli" <a@unstable.cc> =E5=86=99=
=E5=88=B0:=0A=0A> Hi,=0A> =0A> On 28/10/2021 09:23, Yajun Deng wrote:=0A>=
 =0A>> There are three variables that are required at most,=0A>> no need =
to define four variables.=0A>> =0A>> Fixes: 0fa4c30d710d ("batman-adv: Ma=
ke sysfs support optional")=0A>> Signed-off-by: Yajun Deng <yajun.deng@li=
nux.dev>=0A> =0A> NAK.=0A> =0A> kobject_uevent_env() does not know how ma=
ny items are stored in the=0A> array and thus requires it to be NULL term=
inated.=0A> =0A> Please check the following for reference:=0A> =0A> https=
://elixir.bootlin.com/linux/v5.15-rc6/source/lib/kobject_uevent.c#L548=0A=
> =0AOh, I didn't notice there.=0A> OTOH I guess we could still use '{}' =
for the initialization.=0A> =0A> Regards,=0A> =0A> --=0A> Antonio Quartul=
li
