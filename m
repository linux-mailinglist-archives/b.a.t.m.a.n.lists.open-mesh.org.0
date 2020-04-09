Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DE51A35DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Apr 2020 16:29:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DECB8808C4;
	Thu,  9 Apr 2020 16:29:47 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D076E802D2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  9 Apr 2020 16:29:45 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 4B115402C8; Thu,  9 Apr 2020 10:29:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1586442585; bh=aQzpeN8wpcOGOHKk8ZNQ57wCnF+3FHKLrrpCMYO/vIk=;
 h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
 b=k69O2tL8d3/ShJGcFhwp2q2qg1PP290I9yDmb/VwDuAkrI8jSbJkASnqIpoY7i6eG
 qrpMSLza5Y47SbbgGS8DxlQWQBxv1Nol/VJXW/rtc9VldIBwzpWDfTYNmBgmSbHY46
 ZaxY6gJaS6DljiEgteB+gYDcC4dyWGRKFCC2+YI97TUaeLzfsSL6GYS/KByskdNUNE
 XsvwcbsY0yRrXj8LFP9udWZJVTajegKaJH4jNRX4Ca8ZrRbRb8yaLrR+tPqD0d4ULo
 4T6fYlQtc92LdDfBJf5CQguFuwdMEzmFqN8ILtXggsL6lp8+R0N04Ypwh3UwLeaM1a
 jv/+wbDjurtjA==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.160.217] (unknown [38.21.219.50])
 by ory.petesbox.net (Postfix) with ESMTPSA id BE264402C8;
 Thu,  9 Apr 2020 10:29:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1586442583; bh=aQzpeN8wpcOGOHKk8ZNQ57wCnF+3FHKLrrpCMYO/vIk=;
 h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
 b=Zp5LODsj67b9T7u+modfmdxQfK0jhg477mdHL6ONXeeMrqVSQVoaGvT3XUksr803f
 t7iRURJ0ra4cLGhaJ6QITxfUUNfiwAEmSoUzcGrV7k/dTbN1rIufxlvMZ6fQUtwyOU
 WJgx9L/sUD9v35U6uZj2YT68Yv0yn6lwYntjDRgqvskGorWcbPgb6wBrllUmsxMEyn
 dNPVSuZ8mURbY59PTAEyZiKR7ZTUIiJZWKZq+rB9CPA0fcOleZQevhy7oikV2QGXkz
 RwCvhWkdZoi6eHmLZ48jvBXGXAKYEBuqO6mQqrx+dX1jKYCqe4E+FhrY01Q/fE1H82
 ZcCk7U2kCOjSg==
Subject: Re: working openwrt ibss configuration?
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <3d4b35cb-4a4a-13a3-90dc-bbdb26456145@coolheads.com>
 <2428331.g3B3l9l1lY@bentobox>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <5bcbdfb8-5d85-de5b-2bd6-ca6ff3f0f83a@coolheads.com>
Date: Thu, 9 Apr 2020 10:29:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2428331.g3B3l9l1lY@bentobox>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586442585;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=aQzpeN8wpcOGOHKk8ZNQ57wCnF+3FHKLrrpCMYO/vIk=;
 b=zKHp/ypUAa9UxSrvGnCNXKBDo7e0G5P8HIDNTXhOO/nEg6pXOSLDTNb4fB0EJ2v/uuNqE7
 NlELm2qHT+6w6Uj1/2gIZpq07aFsSzVIdu57KE7N/bJbpzF2IUdYdbkMW234PjDA48R/0B
 yh6Ig7gnzSC/yOhBAEv8Cy+q46zLYP0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586442585; a=rsa-sha256; cv=none;
 b=1DKDaxqg3Un0XaQ3qHTo5WQwEU0aA/jgq9vdF4hVADLsH7GboBBY6JeeiE+Y9WH9oF+Zw4
 IdmdVk7ciEUA+CUDYUm91dkgpplGN/YEW2g+1CFkRy/Ezped7UcOEt/pmD4lJNFFrQW7of
 Hwnkv/QQ7FxBlmKJXONcT5qocvTs+eY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=k69O2tL8;
 dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=Zp5LODsj; 
 spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates
 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: srn@coolheads.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Sven, Many thanks for the prompt, relevant and cautionary advice.  I 
will try your suggested OpenWRT configuration soon.

On 4/9/20 1:54 AM, Sven Eckelmann wrote:
> Maybe some of the Gluon users here can
> also provide some insides here because some of the communities used IBSS
> with ath10k-ct.
I'm hoping for just such insights.

All best wishes,

Steve
