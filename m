Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1E91EB314
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Jun 2020 03:41:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4CBD98028F;
	Tue,  2 Jun 2020 03:41:40 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7F95280170
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 03:41:36 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 1B3814095B; Mon,  1 Jun 2020 21:41:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591062096; bh=sN1yAvM8yjnenRRMbm1anTcuJUiVb2woyzWaNYQ88rk=;
	h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=Kcp6cB7QMepX2dI6lDIr7TxBnB5NLCzgJUXntyVikK7K5teh/xDeFuCuIqu9HwB0q
	 0C4nT5wGYJybgox+0Oe9OcjSoFDlglrrHTu5CBT0tG07osC9oy2UEeScLRCXJ+0lJi
	 wf1IwLVf3Bv9/DsUX9op0Z6zNrAsZJLo7xxoyNYYX3ZV8NWkOWRCiOr6fL4avCcq5G
	 T0nUoque67YDTPnnJUBxxZxTp1RryphWtRRKgaMh4ocR//JPbGL7DTSTCYeJWEfQ88
	 rFmLyUGsANYystSnMJpxYdhd4qfnj5tvu4RIw4Qoyri8F2kpOq0W5dbWJOssTqgCFn
	 on+Qz2IvucTHw==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 9EAE240362;
	Mon,  1 Jun 2020 21:41:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591062094; bh=sN1yAvM8yjnenRRMbm1anTcuJUiVb2woyzWaNYQ88rk=;
	h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=sJyLQaos21ERqb68fsnkl++51+2XzvmmXbqJNY0t/GgVxNYcGwMO6bg/5WTBJOY8e
	 INWb9inMZ1F6mvsdHdIgWZLN4vZtLMxjEWWqszs8nevElZ/mYZfVpOd9LYf6F+Gso1
	 9zzo6mVYdEjJvo71tJ+5R2EkQA/DLMgYolQeZiJEytvYWjKLBQ9xxMU3hOVtCT20H5
	 VTL9BgrWojn//eWJvW2nDI7wez4aBgVzoyoXE+V0tDBXmnOR/qSsKPF8c47ooOB8iR
	 ov32RaN4AEUKPlJJ8b68qJUEJlvFla6rUsZKY3WFZXKksISFBjstr/yE8w5OW7CBE4
	 roAANet+q4fMg==
Subject: Re: Network stops passing traffic randomly
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <1970963.L7oaDoOIKM@sven-edge>
 <04932e2f-d727-46ce-ef68-2c79062cf196@coolheads.com>
 <41ed807d-5bbf-8cd0-53e8-0951c84b4889@candelatech.com>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <1f7b4548-d4b1-2063-dd73-fa866d195efe@coolheads.com>
Date: Mon, 1 Jun 2020 21:41:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <41ed807d-5bbf-8cd0-53e8-0951c84b4889@candelatech.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591062096;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sN1yAvM8yjnenRRMbm1anTcuJUiVb2woyzWaNYQ88rk=;
	b=fpBXj4GKudeb5oYP64Jy449se9BlS/0CV556wqnlTmLAqQC/EP69ycjn7d7DQGHR5PMV3h
	u0Wg8gvmQum88u11fGlZ5IXLHEtB18r+Cd/tZtttrxH8MYiSUoG9qdmVQjpx04jnpbw5qw
	amT42KHeF/6zgrfxVxd3gevNtpN33eg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591062096; a=rsa-sha256;
	cv=none;
	b=kRDqGV/gp7YIh1s35qS4QsXI3yvNBQDTtMHiz0SYaHoyBQDELLFTP2lshNwito0g3erkre
	KlnFv/nO3MJA/26kEkmCdkFnE7/AlpEY3yzZh2JNvIhb5UbtB2kOFuvRcl97un2wqCbCIL
	EME0vWZYPDJAvxHKMmVasXJvwdBB1j4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=Kcp6cB7Q;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=sJyLQaos;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: S3BGV4REBVU5ODIGII27TRKQ72325NZ7
X-Message-ID-Hash: S3BGV4REBVU5ODIGII27TRKQ72325NZ7
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/S3BGV4REBVU5ODIGII27TRKQ72325NZ7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 5/28/20 5:28 PM, Ben Greear wrote:
> I've tested DFS in STA/AP mode and that works fine on my=20
> driver/firmware, possibly
> due to us setting the regdom as a fwcfg option, I suppose.=20
I wonder how I can set the regdom as fwcfg option?=A0 I don't know the=20
procedure to try that.=A0 Do I need to cross-compile the firmware myself,=
=20
rather than using the OpenWRT package?
