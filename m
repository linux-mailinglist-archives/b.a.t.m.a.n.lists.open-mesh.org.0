Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B6D438225
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Oct 2021 09:08:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DCA5082F35;
	Sat, 23 Oct 2021 09:08:40 +0200 (CEST)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1CDBF8054E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 22:57:17 +0200 (CEST)
Received: by mail-lj1-x231.google.com with SMTP id 145so847110ljj.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Oct 2021 13:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=/2Oyx3gtUUIUVbpFEL+V2b/0RPstg82IKKmaTuTPF5M=;
        b=XxKnOMpxXJvFfeTn4AT3QvMuXQ6NfP8Fkj5P01SZraLEXMOMhgkNmjBEr38AgqP87l
         ggmwm9k2sTRECttFpJZucPOuq/jlzPGr2q0Y6wSKanvppW5YbQFHlsnG3yb5LIQvpe2k
         txNoRL7mxnnruWP30TS0X8waG9IqgzNBcCWHHRuNLHZrkfnV3WtwuPWkN51p1C+/JYGb
         Zhe+adLbWnSR6M7MhTYDcr+nMLQ/S4emqAjdm7vw56d2ibt+RwSG3qtJ0XhDLU2BynS1
         T2exY/IHKbwTQ+QkBhftnGLPXC8IRjzlX1+bI9r6/w3CYVrXCUvyW4MDcN8g7pdbjnLA
         kAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=/2Oyx3gtUUIUVbpFEL+V2b/0RPstg82IKKmaTuTPF5M=;
        b=ps3n1+5VLp8hxrucn57ii88ce+qjxfYpZVOcRWCKhG9mQGQL13FVMlr3uCjJKw6VF6
         tCs0V2MnvtbXBeK5MdwXC781IfSYa67NBCO1gqf/ztN5yBwpuomFC9a3ZWJ7I/jdDvPV
         W125pVwZrqWHXFpYRtn5Q2Y8g+u8GiRWzQaSwJFvJFY3Xc/v3x4bYtW4bAszl0Lw0+mB
         3RpMfqR1qw3TNr79iyX+wv7NlnoSiaY3G/OPQKKSL/t6t0veclWgR+OP6qrPRGVIqRDV
         DePxD9a8NIiBnsJNWTVF/CB0LNDYBTm+DbB1xqgs8jHvVGBjnHQlYHJ8Lvl3Nsp0WuDs
         +eZQ==
X-Gm-Message-State: AOAM5327YncvL7Ykyrxpg5XRPPHhrVHK/+Zmj/9rhwRX05vykwS8tqFY
	PS50wKAI+yhZp/A7lf+Nfxk=
X-Google-Smtp-Source: ABdhPJzpzVVQLw6PNdKy/N5vkE4MIanTP1RRNGfKqJJrMiGyg+yL+TYsJSesiblMBoX3ihMc1iWugA==
X-Received: by 2002:a2e:760d:: with SMTP id r13mr2277581ljc.355.1634936236326;
        Fri, 22 Oct 2021 13:57:16 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.235.181])
        by smtp.gmail.com with ESMTPSA id a16sm966763ljk.100.2021.10.22.13.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 13:57:15 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------XP0ezmYVfmtBDjzAIPdDrp9W"
Message-ID: <1639fcba-e543-e071-f17c-941b8c7a948f@gmail.com>
Date: Fri, 22 Oct 2021 23:57:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [syzbot] WARNING in batadv_nc_mesh_free
Content-Language: en-US
To: syzbot <syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com>,
 a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, sven@narfation.org, sw@simonwunderlich.de,
 syzkaller-bugs@googlegroups.com
References: <000000000000c87fbd05cef6bcb0@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000c87fbd05cef6bcb0@google.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634936237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/2Oyx3gtUUIUVbpFEL+V2b/0RPstg82IKKmaTuTPF5M=;
	b=E5dz16pJhVp7GKDD6ASTRTJ7OtnDAbiRaiCONduQ4RJPDpMc8qdppTSciZTeJ/OV6jE9GS
	mpOKcQyBjPxUTfcW4AqJ4dsafm1xOxsrkoxaQDTEx1LJvdlCjvc1hpfZVy4+Ls1vMmDKgU
	GKYdLowrz9RG2FyI+l2ZkTON+QhhOXk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=XxKnOMpx;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=paskripkin@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634936237; a=rsa-sha256;
	cv=none;
	b=fNoKTp5a7+AMg+nveOy3P6heAyAcYhCCl0azCpERJRZxEUiQ14yKbTu7uj/VEB6+7urgMC
	zgfutHge+w/wyW+YejXl0BlzJkSKxt53ZhRIiloCy48MmEv4dNvMLO1+Go5amG+U2vqjY0
	tOdD9fAoJtH6Sf228ys7d2CfYyzRCe4=
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: ISZOW6IEAGHQBPJNPACLZG2HGKEJQNS6
X-Message-ID-Hash: ISZOW6IEAGHQBPJNPACLZG2HGKEJQNS6
X-Mailman-Approved-At: Sat, 23 Oct 2021 07:08:38 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ISZOW6IEAGHQBPJNPACLZG2HGKEJQNS6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is a multi-part message in MIME format.
--------------XP0ezmYVfmtBDjzAIPdDrp9W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/21 23:20, syzbot wrote:
> Hello,
> 
> syzbot has tested the proposed patch but the reproducer is still triggering an issue:
> general protection fault in batadv_nc_purge_paths


Oh, ok. Next clean up call in batadv_nc_mesh_free() caused GPF, since 
fields are not initialized. Let's try to clean up one by one and do not 
break dependencies.

Quite ugly one, but idea is correct, I guess

Also, make each *_init() call clean up all allocated stuff to not call 
corresponding *_free() on error handling path, since it introduces 
problems, as syzbot reported




With regards,
Pavel Skripkin


--------------XP0ezmYVfmtBDjzAIPdDrp9W
Content-Type: text/plain; charset=UTF-8; name="ph"
Content-Disposition: attachment; filename="ph"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL25ldC9iYXRtYW4tYWR2L2JyaWRnZV9sb29wX2F2b2lkYW5jZS5jIGIv
bmV0L2JhdG1hbi1hZHYvYnJpZGdlX2xvb3BfYXZvaWRhbmNlLmMKaW5kZXggMTY2OTc0NDMw
NGM1Li4xNzY4Nzg0OGRhZWMgMTAwNjQ0Ci0tLSBhL25ldC9iYXRtYW4tYWR2L2JyaWRnZV9s
b29wX2F2b2lkYW5jZS5jCisrKyBiL25ldC9iYXRtYW4tYWR2L2JyaWRnZV9sb29wX2F2b2lk
YW5jZS5jCkBAIC0xNTYwLDEwICsxNTYwLDE0IEBAIGludCBiYXRhZHZfYmxhX2luaXQoc3Ry
dWN0IGJhdGFkdl9wcml2ICpiYXRfcHJpdikKIAkJcmV0dXJuIDA7CiAKIAliYXRfcHJpdi0+
YmxhLmNsYWltX2hhc2ggPSBiYXRhZHZfaGFzaF9uZXcoMTI4KTsKLQliYXRfcHJpdi0+Ymxh
LmJhY2tib25lX2hhc2ggPSBiYXRhZHZfaGFzaF9uZXcoMzIpOworCWlmICghYmF0X3ByaXYt
PmJsYS5jbGFpbV9oYXNoKQorCQlyZXR1cm4gLUVOT01FTTsKIAotCWlmICghYmF0X3ByaXYt
PmJsYS5jbGFpbV9oYXNoIHx8ICFiYXRfcHJpdi0+YmxhLmJhY2tib25lX2hhc2gpCisJYmF0
X3ByaXYtPmJsYS5iYWNrYm9uZV9oYXNoID0gYmF0YWR2X2hhc2hfbmV3KDMyKTsKKwlpZiAo
IWJhdF9wcml2LT5ibGEuYmFja2JvbmVfaGFzaCkgeworCQliYXRhZHZfaGFzaF9kZXN0cm95
KGJhdF9wcml2LT5ibGEuY2xhaW1faGFzaCk7CiAJCXJldHVybiAtRU5PTUVNOworCX0KIAog
CWJhdGFkdl9oYXNoX3NldF9sb2NrX2NsYXNzKGJhdF9wcml2LT5ibGEuY2xhaW1faGFzaCwK
IAkJCQkgICAmYmF0YWR2X2NsYWltX2hhc2hfbG9ja19jbGFzc19rZXkpOwpkaWZmIC0tZ2l0
IGEvbmV0L2JhdG1hbi1hZHYvbWFpbi5jIGIvbmV0L2JhdG1hbi1hZHYvbWFpbi5jCmluZGV4
IDNkZGQ2NmU0YzI5ZS4uOTA1MTJlZDMyMzQ4IDEwMDY0NAotLS0gYS9uZXQvYmF0bWFuLWFk
di9tYWluLmMKKysrIGIvbmV0L2JhdG1hbi1hZHYvbWFpbi5jCkBAIC0xOTAsMjkgKzE5MCw0
MSBAQCBpbnQgYmF0YWR2X21lc2hfaW5pdChzdHJ1Y3QgbmV0X2RldmljZSAqc29mdF9pZmFj
ZSkKIAogCWJhdF9wcml2LT5ndy5nZW5lcmF0aW9uID0gMDsKIAotCXJldCA9IGJhdGFkdl92
X21lc2hfaW5pdChiYXRfcHJpdik7Ci0JaWYgKHJldCA8IDApCi0JCWdvdG8gZXJyOwotCiAJ
cmV0ID0gYmF0YWR2X29yaWdpbmF0b3JfaW5pdChiYXRfcHJpdik7Ci0JaWYgKHJldCA8IDAp
Ci0JCWdvdG8gZXJyOworCWlmIChyZXQgPCAwKSB7CisJCWF0b21pY19zZXQoJmJhdF9wcml2
LT5tZXNoX3N0YXRlLCBCQVRBRFZfTUVTSF9ERUFDVElWQVRJTkcpOworCQlnb3RvIGVycl9v
cmlnOworCX0KIAogCXJldCA9IGJhdGFkdl90dF9pbml0KGJhdF9wcml2KTsKLQlpZiAocmV0
IDwgMCkKLQkJZ290byBlcnI7CisJaWYgKHJldCA8IDApIHsKKwkJYXRvbWljX3NldCgmYmF0
X3ByaXYtPm1lc2hfc3RhdGUsIEJBVEFEVl9NRVNIX0RFQUNUSVZBVElORyk7CisJCWdvdG8g
ZXJyX3R0OworCX0KKworCXJldCA9IGJhdGFkdl92X21lc2hfaW5pdChiYXRfcHJpdik7CisJ
aWYgKHJldCA8IDApIHsKKwkJYXRvbWljX3NldCgmYmF0X3ByaXYtPm1lc2hfc3RhdGUsIEJB
VEFEVl9NRVNIX0RFQUNUSVZBVElORyk7CisJCWdvdG8gZXJyX3Y7CisJfQogCiAJcmV0ID0g
YmF0YWR2X2JsYV9pbml0KGJhdF9wcml2KTsKLQlpZiAocmV0IDwgMCkKLQkJZ290byBlcnI7
CisJaWYgKHJldCA8IDApIHsKKwkJYXRvbWljX3NldCgmYmF0X3ByaXYtPm1lc2hfc3RhdGUs
IEJBVEFEVl9NRVNIX0RFQUNUSVZBVElORyk7CisJCWdvdG8gZXJyX2JsYTsKKwl9CiAKIAly
ZXQgPSBiYXRhZHZfZGF0X2luaXQoYmF0X3ByaXYpOwotCWlmIChyZXQgPCAwKQotCQlnb3Rv
IGVycjsKKwlpZiAocmV0IDwgMCkgeworCQlhdG9taWNfc2V0KCZiYXRfcHJpdi0+bWVzaF9z
dGF0ZSwgQkFUQURWX01FU0hfREVBQ1RJVkFUSU5HKTsKKwkJZ290byBlcnJfZGF0OworCX0K
IAogCXJldCA9IGJhdGFkdl9uY19tZXNoX2luaXQoYmF0X3ByaXYpOwotCWlmIChyZXQgPCAw
KQotCQlnb3RvIGVycjsKKwlpZiAocmV0IDwgMCl7CisJCWF0b21pY19zZXQoJmJhdF9wcml2
LT5tZXNoX3N0YXRlLCBCQVRBRFZfTUVTSF9ERUFDVElWQVRJTkcpOworCQlnb3RvIGVycl9u
YzsKKwl9CiAKIAliYXRhZHZfZ3dfaW5pdChiYXRfcHJpdik7CiAJYmF0YWR2X21jYXN0X2lu
aXQoYmF0X3ByaXYpOwpAQCAtMjIyLDggKzIzNCwyMCBAQCBpbnQgYmF0YWR2X21lc2hfaW5p
dChzdHJ1Y3QgbmV0X2RldmljZSAqc29mdF9pZmFjZSkKIAogCXJldHVybiAwOwogCi1lcnI6
Ci0JYmF0YWR2X21lc2hfZnJlZShzb2Z0X2lmYWNlKTsKK2Vycl9uYzoKKwliYXRhZHZfZGF0
X2ZyZWUoYmF0X3ByaXYpOworZXJyX2RhdDoKKwliYXRhZHZfYmxhX2ZyZWUoYmF0X3ByaXYp
OworZXJyX2JsYToKKwliYXRhZHZfdl9tZXNoX2ZyZWUoYmF0X3ByaXYpOworZXJyX3Y6CisJ
YmF0YWR2X3R0X2ZyZWUoYmF0X3ByaXYpOworZXJyX3R0OgorCWJhdGFkdl9vcmlnaW5hdG9y
X2ZyZWUoYmF0X3ByaXYpOworZXJyX29yaWc6CisJYmF0YWR2X3B1cmdlX291dHN0YW5kaW5n
X3BhY2tldHMoYmF0X3ByaXYsIE5VTEwpOworCWF0b21pY19zZXQoJmJhdF9wcml2LT5tZXNo
X3N0YXRlLCBCQVRBRFZfTUVTSF9JTkFDVElWRSk7CisKIAlyZXR1cm4gcmV0OwogfQogCmRp
ZmYgLS1naXQgYS9uZXQvYmF0bWFuLWFkdi9uZXR3b3JrLWNvZGluZy5jIGIvbmV0L2JhdG1h
bi1hZHYvbmV0d29yay1jb2RpbmcuYwppbmRleCA5ZjA2MTMyZTAwN2QuLjBhN2YxZDM2YTZh
OCAxMDA2NDQKLS0tIGEvbmV0L2JhdG1hbi1hZHYvbmV0d29yay1jb2RpbmcuYworKysgYi9u
ZXQvYmF0bWFuLWFkdi9uZXR3b3JrLWNvZGluZy5jCkBAIC0xNTIsOCArMTUyLDEwIEBAIGlu
dCBiYXRhZHZfbmNfbWVzaF9pbml0KHN0cnVjdCBiYXRhZHZfcHJpdiAqYmF0X3ByaXYpCiAJ
CQkJICAgJmJhdGFkdl9uY19jb2RpbmdfaGFzaF9sb2NrX2NsYXNzX2tleSk7CiAKIAliYXRf
cHJpdi0+bmMuZGVjb2RpbmdfaGFzaCA9IGJhdGFkdl9oYXNoX25ldygxMjgpOwotCWlmICgh
YmF0X3ByaXYtPm5jLmRlY29kaW5nX2hhc2gpCisJaWYgKCFiYXRfcHJpdi0+bmMuZGVjb2Rp
bmdfaGFzaCkgeworCQliYXRhZHZfaGFzaF9kZXN0cm95KGJhdF9wcml2LT5uYy5jb2Rpbmdf
aGFzaCk7CiAJCWdvdG8gZXJyOworCX0KIAogCWJhdGFkdl9oYXNoX3NldF9sb2NrX2NsYXNz
KGJhdF9wcml2LT5uYy5kZWNvZGluZ19oYXNoLAogCQkJCSAgICZiYXRhZHZfbmNfZGVjb2Rp
bmdfaGFzaF9sb2NrX2NsYXNzX2tleSk7CmRpZmYgLS1naXQgYS9uZXQvYmF0bWFuLWFkdi90
cmFuc2xhdGlvbi10YWJsZS5jIGIvbmV0L2JhdG1hbi1hZHYvdHJhbnNsYXRpb24tdGFibGUu
YwppbmRleCBlMGIzZGFjZTIwMjAuLjJjMzhkOWNiNGNjNCAxMDA2NDQKLS0tIGEvbmV0L2Jh
dG1hbi1hZHYvdHJhbnNsYXRpb24tdGFibGUuYworKysgYi9uZXQvYmF0bWFuLWFkdi90cmFu
c2xhdGlvbi10YWJsZS5jCkBAIC00MTYyLDggKzQxNjIsMTAgQEAgaW50IGJhdGFkdl90dF9p
bml0KHN0cnVjdCBiYXRhZHZfcHJpdiAqYmF0X3ByaXYpCiAJCXJldHVybiByZXQ7CiAKIAly
ZXQgPSBiYXRhZHZfdHRfZ2xvYmFsX2luaXQoYmF0X3ByaXYpOwotCWlmIChyZXQgPCAwKQor
CWlmIChyZXQgPCAwKSB7CisJCWJhdGFkdl90dF9nbG9iYWxfdGFibGVfZnJlZShiYXRfcHJp
dik7CiAJCXJldHVybiByZXQ7CisJfQogCiAJYmF0YWR2X3R2bHZfaGFuZGxlcl9yZWdpc3Rl
cihiYXRfcHJpdiwgYmF0YWR2X3R0X3R2bHZfb2dtX2hhbmRsZXJfdjEsCiAJCQkJICAgICBi
YXRhZHZfdHRfdHZsdl91bmljYXN0X2hhbmRsZXJfdjEsCg==
--------------XP0ezmYVfmtBDjzAIPdDrp9W--
