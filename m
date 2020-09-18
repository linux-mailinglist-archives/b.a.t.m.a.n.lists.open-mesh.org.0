Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FE726F5F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 08:37:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6D2B2807BB;
	Fri, 18 Sep 2020 08:37:10 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0E80D80250
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 08:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1600410166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=J7DOruZAPYo1Ziyj0KQ/CLpIQiG4PiroPi3tQfV9R4A=;
	b=up203ko1vwx17X+A1tHjX6Esz3Zx2KzqkgJ07D3TCdHXaTpQaCWPv6NsuUt3xnoCN0DQuA
	ZE2FsRz/z/Y6qcAtlu8AiZk/zzxQGaFlG9uPY8bM7PQB9eMsWgSNACFwwc/t5lxS0NK7gr
	I+BbgaLv1Kag4Y2coGLVSpgB/ucQl1k=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>
Subject: Re: [PATCH] batman-adv: Fix orig node refcnt leak when creating neigh node
Date: Fri, 18 Sep 2020 08:22:43 +0200
Message-ID: <3173635.NQHa8YD4nL@ripper>
In-Reply-To: <1600398200-8198-1-git-send-email-xiyuyang19@fudan.edu.cn>
References: <1600398200-8198-1-git-send-email-xiyuyang19@fudan.edu.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3372165.47aDjYEo1S"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600410167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=J7DOruZAPYo1Ziyj0KQ/CLpIQiG4PiroPi3tQfV9R4A=;
	b=xRz7L8/Ov/kYsw9VaRKY4bg0YQtX7p4vGUkl/SwuwQxfPn2Of0s5bIP0xk6GBRG8KrGyV7
	b15B9bxHZFrLDCeVFe3ZNRtQbO4viHK1alHLuCpYWgYxrKEdpTryLmbfAe+8ABUTbPRYnx
	Z111+sqfwwNqafWrEvTsyvcc3kUl+0c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600410167; a=rsa-sha256;
	cv=none;
	b=j8Es67h01akkIbnJzgofvsaUYWQcyUjoDa6JaldfNaYfFdd465ZXHh2NTBhSm2qeKjhxc2
	VSQv8kq24be5xuH29RqGF+C9op+QaJlID8n708vTWF1NQtKsnN9Dpqzf5J1jOXGV7Yl72r
	Yp5lzFjaSw5n0TKj8Tszz7ZMD/ztlN8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=up203ko1;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: BKESQHJL4MFSS7VHDSWWJSMJNIECWTGR
X-Message-ID-Hash: BKESQHJL4MFSS7VHDSWWJSMJNIECWTGR
X-Mailman-Approved-At: Fri, 18 Sep 2020 06:37:08 +0200
CC: yuanxzhang@fudan.edu.cn, kjlu@umn.edu, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BKESQHJL4MFSS7VHDSWWJSMJNIECWTGR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3372165.47aDjYEo1S
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 18 September 2020 05:03:19 CEST Xiyu Yang wrote:
> batadv_neigh_node_create() is used to create a neigh node object, whose
> fields will be initialized with the specific object. When a new
> reference of the specific object is created during the initialization,
> its refcount should be increased.
> 
> However, when "neigh_node" object initializes its orig_node field with
> the "orig_node" object, the function forgets to hold the refcount of the
> "orig_node", causing a potential refcount leak and use-after-free issue
> for the reason that the object can be freed in other places.
> 
> Fix this issue by increasing the refcount of orig_node object during the
> initialization and adding corresponding batadv_orig_node_put() in
> batadv_neigh_node_release().


I will most likely not add this patch because I have concerns that this would 
need an active garbage collector to fix the reference counter loop.

Please check batadv_neigh_node::orig_node (whose reference counter you've just 
incremented) and batadv_orig_node::neigh_list (with batadv_neigh_node). And at 
the same time the batadv_neigh_node_release and batadv_orig_node_release. So 
the originator will only free the reference (and thus potentially call 
batadv_neigh_node_release) when its own reference counter is zero. But it 
cannot become zero because the neigh_node is holding a reference to this 
originator.

Kind regards,
	Sven

--nextPart3372165.47aDjYEo1S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9kUjMACgkQXYcKB8Em
e0Z1hw/9Hhq8F/9JHS0zWSv7J58oJSa2gi0ONWuLkTN6XX2g0qY/w9Kn1vbPTIK1
VCI2bDDDTbZxk51mxJO0kpE6Q5r8wrFrV+ESoQE/ccFDy6OxtUxCveL6jsfwXIWw
zgQY44iumPlxrjnc0uOCR+7vbAFXjz2u9EekF/gv4etbDTvp0ZNt0QM4hAvDXsBH
q3RHY6ywuwUu7nRlXPNcmGWNrCpUrindQiRUB4vZXoLckjRgD3MerFjSnd1kp32B
Wd3WPqb+nggqNX8eCX4GGsLXk+wsstIDhtG/aLwNpJWd2kAkfq2zeWQ0GltzdUQk
Z17hIPOGEqKCgGmC7akHunAo9M3TFkglnO1NgYL36j6RcRgQV6VLClovP6Qk8Iin
kPyrUWXOH9slZnIH+enp1vggkepKmI8kMG+5OVVNXfMoRMbVSyboiKuyI5+Tig3A
8U+9Z6H29fhNv7E7BSCRg+VfEZXInjBcKuwSD6bZ4IE8RA3HFh0ZcOIjBiWUekUm
tP890PFNb2mTJzOHZ8cFbyxuJ64o2R8pEQvVNdw8y2oth01QEzVVsaAL0QFQG8g/
rtBKpZqog0kC+PIysIaFhGupjrZzb/+hvHpamo1JDcdGzZ5Ve8U0bmJPOc4CfeRA
r8RZz31EgGebqlbdGPvWPhZAY3NcMVq0LBS78WCDUNOiPc589Co=
=5J+s
-----END PGP SIGNATURE-----

--nextPart3372165.47aDjYEo1S--


