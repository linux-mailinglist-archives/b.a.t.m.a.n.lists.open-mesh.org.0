Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EA54A900C00
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Jun 2024 20:46:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C168482F7A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Jun 2024 20:46:18 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1717785978;
 b=ZexASsmaiMl3CvDSV0Gvhl1mobFrWQaS+fKIqDyigGjVGaLksNfxf1rZiT0B9237ca2oj
 8d9aKZPtfbgMCh5TkHOOUcGxAxWe5RoSrPmIlxyKjrlji8XyuXitFCoBPSrODVAw6Q5Lz0/
 IFlxiN5xwJOPt83uXVMgNTzdW9cZ/64=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1717785978; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FFEyK0DY8IpFcUTkeSbNeWt4t8L56sLzjHekE18/ezc=;
 b=Xxg/xLMKCMKyz4LTd7hJNsGm5vueTdGIr0672+WbrqjyPm8mKZ2YVaOl1nYYGCxYLtVOc
 sC/MQZuSx0GL1MF70oXcFm6DOsPXKuLPSjtIdzcBFm+YrKeHRmYcquaCGfwslVUWXqZHLGz
 4FzIWiAnNcIc6tgTa1gMXjwUgUnUoDQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C995E802EA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Jun 2024 20:33:12 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1717785192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FFEyK0DY8IpFcUTkeSbNeWt4t8L56sLzjHekE18/ezc=;
	b=DppmBvKOqzm/KE0LHJDo2smMuTxFlTgleeQdKowW6tGwiJJR4h63U+/cBVGavnkAwmpt+x
	bkjeb/GTJOrWuKPQW7+xruxzWDDUofXMqZycAG28qcyZehv995A/YRXo+6vNSgNTKziORU
	J1kVsji6+3wz7jWnJ8Q0h/zpF0sKkYg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=hZ136Q9m;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1717785192; a=rsa-sha256;
	cv=none;
	b=XQF6PDMez/lIiFacTP1zPMnopytngGdpKHkgau9aRcRNe9mLio8Ma/8nVZ647lXQULar0B
	jLsxJYEQEtNx3dJ7lUYx1Cmkz/bzOo06z5TryjmIQd9vxkFtRTXa+8++6cLGCd2AbGR2Bh
	q0hqtCsxiEAHXPBkrUaJL/Xp5U5yIyg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1717785191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FFEyK0DY8IpFcUTkeSbNeWt4t8L56sLzjHekE18/ezc=;
	b=hZ136Q9m/YuxRSuKeRtrrdjnpbDqDlC0VZr5Soq51LKx+eI2e74hXat/0nxoBYDWn65akr
	9JrqnR8/r6RKuvbfjU7MwCkuPxL22cJWF1EIf5KXKiE+2Wcx+/VAd+Z3d4kuoUaaGPBGTX
	Iz7VCRzkYMkgkzYT+01PwTc2tOqRbIs=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Erick Archer <erick.archer@outlook.com>
Cc: Erick Archer <erick.archer@outlook.com>, b.a.t.m.a.n@lists.open-mesh.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-hardening@vger.kernel.org, llvm@lists.linux.dev
Subject: 
 Re: [PATCH v4] batman-adv: Add flex array to struct batadv_tvlv_tt_data
Date: Fri, 07 Jun 2024 20:33:08 +0200
Message-ID: <2529523.GKX7oQKdZx@ripper>
In-Reply-To: 
 <AS8PR02MB7237205E3231CD335CB988648BFB2@AS8PR02MB7237.eurprd02.prod.outlook.com>
References: 
 <AS8PR02MB7237205E3231CD335CB988648BFB2@AS8PR02MB7237.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2954765.bcXerOTE6V";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: VPZWK7FM2XQTQR77XJVT5TJWQOKLDQUZ
X-Message-ID-Hash: VPZWK7FM2XQTQR77XJVT5TJWQOKLDQUZ
X-Mailman-Approved-At: Fri, 07 Jun 2024 20:45:17 +0200
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VPZWK7FM2XQTQR77XJVT5TJWQOKLDQUZ/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2954765.bcXerOTE6V
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 07 Jun 2024 20:33:08 +0200
Message-ID: <2529523.GKX7oQKdZx@ripper>
MIME-Version: 1.0

On Friday, 7 June 2024 18:19:12 CEST Erick Archer wrote:
> Hi,
> 
> As it was decided in version 3, I resend this path since -r2 has been
> released. I hope that this time the patch can be applied ;)

Thanks, applied.

Kind regards,
	Sven
--nextPart2954765.bcXerOTE6V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZmNSZAAKCRBND3cr0xT1
y5B6AQCskTowCR93AUyerf8R+T/LbG434M61OZgxyimamI09YAD8CmdPzu35Sh+O
P7MqIU9qdXBCNKqbNf8jYJhR8W44awE=
=+VlR
-----END PGP SIGNATURE-----

--nextPart2954765.bcXerOTE6V--



