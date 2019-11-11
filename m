Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE78F6C55
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Nov 2019 02:32:32 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1ADDD804F2;
	Mon, 11 Nov 2019 02:32:24 +0100 (CET)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by open-mesh.org (Postfix) with ESMTPS id B93C98009F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Nov 2019 02:32:18 +0100 (CET)
Received: by mail-pf1-x436.google.com with SMTP id d13so9556506pfq.2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 Nov 2019 17:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=5fDhW2lie/khauPPQIL1cYapPEKciwZw0rDWhSm7YG0=;
 b=DHeJR/kD3rQYeLUZIv6Y9KrPhqXcYLQdDgUOEMVvAD2Nh+mTKj6IrS4WuKg/IOlQt6
 +jmKEGcouuzyV3dciLxYdJyifQMA9rzMeFtZlTLsDbnerGNgsXYVzpcdvzu09hkMbK42
 f0jjtNiNdqcslpP60Pqz2itJKEcALXCLZrBts8yyR+VPkrY3QPkL1kXc55MV1dau5LHC
 rw4GEWklrJ8UnhpmimQcwo6zerVCaNgmtmI+XfcerWHIGsWC1N8+GPG3xU1M0giyVDco
 GrZy04QKxg7LRdG7l4Lu8JnPGj2AUMlO243O9SJ7UHVHjNn+YSigCs5+CJT88YNYzPUf
 6pBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:from:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=5fDhW2lie/khauPPQIL1cYapPEKciwZw0rDWhSm7YG0=;
 b=rS3SIjjP46HcXZrkEapLEyqvDWaebsu2An0oyTy/d2yHwoguMmnGLikKAYaN7iI6Ct
 YaTTxsPu+kx0S53jBz5Fqdz7yWVGqweJc4kvO+PwmItdz2zqRnKojY2bFryawQ0ss55F
 p3WsgUUTcHNqMxEBo+tk2ee9Yy/sZVmnsAGTEJiYHkADj7idYNwX0Nn/RxzfLMy7089l
 D/Rk4qOAb4J0yrfRiXw9T2K0Xfn/UBZ4dfmlHpU9BpLWKRZ1rtBrCqrH+mIiNuFkLwop
 tfhgH1BicCuztXcnM7UJd1VaOjS86W7x0gsDcirSJiLVxjLTmjRf/I2gFdNbYTlRXqVs
 WA1w==
X-Gm-Message-State: APjAAAXXZIXeoPUn+IDPGEE/Sym/5GvhJWUF54mMR3mlasr4YHSzc4C/
 9yVeQpEgTz92zKn/DGBQjPG0VYIMyrQYRA==
X-Google-Smtp-Source: APXvYqxzKmDippb1K9sXRZvlw/iknjALh5gAf+ngI6lxuCAAElgvD2SD/IACHc3sRaCfNtgsVjhPUg==
X-Received: by 2002:a62:8c:: with SMTP id 134mr25838040pfa.31.1573435936864;
 Sun, 10 Nov 2019 17:32:16 -0800 (PST)
Received: from [192.168.42.10] ([157.245.207.76])
 by smtp.gmail.com with ESMTPSA id y4sm12813421pgy.27.2019.11.10.17.32.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 Nov 2019 17:32:16 -0800 (PST)
To: mareklindner@neomailbox.ch, b.a.t.m.a.n@lists.open-mesh.org
From: Xuebing Wang <xbing6@gmail.com>
Subject: Any suggestions about configuring batman-adv gateways + modems
Message-ID: <8b190923-5db5-17b2-da46-538b377d862a@gmail.com>
Date: Mon, 11 Nov 2019 09:32:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573435939;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=5fDhW2lie/khauPPQIL1cYapPEKciwZw0rDWhSm7YG0=;
 b=e5287fE+Kwx3GyecZ28zDfOGQ2oMEfmk1NpkzX4r6AdGCAhOT0yUwl4fJcfX7FlSD5uWMY
 qo3o/77VRmtBQWDLX4eYCqY7xNyRIkUOXMi6vq0JnRpwRVv29w0xdVQRYorronb1OXppkn
 xZdiUucLHhOe91J2FYBMmewXg09LIoI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573435939; a=rsa-sha256; cv=none;
 b=c1RTsgWFBH0x0N+KL9ZRyL3pjRjV0c+WuwlotIauRF3TOPhHBTb4ac2AU562qdDuR6GTM3
 wOzFwe0jKmctrixiZ8FRN4qT+BWwp+pAFzdW0PxWNuYega75fhuv/EjfkQkNZcBCe0o86Y
 WFoufp9yOq0cmzG1ez3fL1C+JWQqjCA=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=DHeJR/kD;
 spf=pass (open-mesh.org: domain of xbing6@gmail.com designates
 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=xbing6@gmail.com
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
Reply-To: xbing6@gmail.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi Marek,

Thank you very much for your help.

 >> When modem at gateway (for WAN uplink) is down and loses internet
 >> connection (but batman-adv connections with clients are good and dhcp
 >> server works good), can batman-adv clients know that internet 
connection is
 >> lost and "roam" to another gateway with good internet connection?
 >
 >Seems you are looking for this:
 >https://www.open-mesh.org/projects/batman-adv/wiki/Gateways

Yes, batman-adv gateway is what I am using.

Do I need to write or find a daemon at gateway to sense internet 
connection, once internet connection is lost (and does not recover 
within like 2-5 minutes) then advertise batman-adv mesh network by 
"batctl gw_mode client" to turn this node to be a client?

Thanks.
Xuebing Wang

