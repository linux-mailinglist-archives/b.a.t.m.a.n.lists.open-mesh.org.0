Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AA9611DA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Jul 2019 17:21:31 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E26008158D;
	Sat,  6 Jul 2019 17:21:28 +0200 (CEST)
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by open-mesh.org (Postfix) with ESMTPS id AB17A808E3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Jul 2019 17:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562426482;
 bh=AfG9DYZIF0h7PeW1TAWVUl51IlOCQiJvZ4GF2A8fV+k=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XYOzcpDZCn0LRmgZILBGFYodnGOzEFX/Bil8HMEJKZpV1Q9BF1F4znCJ+CVMcpko7
 DEVOyngcHl0GZxIJGaE8tqYTZVpxiOfoqiW71S4Lhd7n+24k7JBVEBIi51A1nvMcNk
 U7PDHeq2nf9TSx7g9X1PiysYfEYvklTbHNmkvGBU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.133] ([91.3.172.83]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MOipW-1hpoNI39Gg-006AoK; Sat, 06
 Jul 2019 17:21:22 +0200
Subject: Re: Unknown symbol cfg80211_get_station
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <1875314.jOPAOSbl7z@sven-edge>
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
Date: Sat, 6 Jul 2019 17:22:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1875314.jOPAOSbl7z@sven-edge>
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:1mFEQUidKn6HcLGP8oP5IJU3OKUaOXf2JS4s6/9bFGn4BX+uixu
 qLOocWtLkFrE+rMQOUR9bBtqIHpf0NSYoVmceIcZVFWElCQoU29UPP4Pj+4Qm85cxoEOc0U
 00ZbjFCpA004Nc6LwUmf2+k+kduoE5EQDEgQnXK/us4qugLqQjiC3XSOEFbO1yfdBIsY8vS
 v7ymy7R2SrBxgszYnLVGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D6Jv9U+e++k=:jHG5EnWML2XzdHv9G6b6bi
 vD9wdOB/FufycWKli+heQZrMu1HqMy32IvDCjo+JvcEOwdgcyi4Wj9mbV16BYz+y0zdUXiYR2
 P7ryVYvOJX1dCtnlsjpNUmAWzJCNGAEHqATmyvyZ6FYnLcmmw3po3pLNp1JsraAvVx8bPnhJK
 b43KfssPU9abEYawAX8mURmGBUhKEaDYGPcZ162K5CxL4Kxwm4mBw0DD1CHjsg6RvTzotd9LK
 vOt/B0TwQ2hXQwlsabIA5bbJzxg65M4JLTxtyyMHoM2TcBFWWn6MfVIh2aFa17Qq7cNzOzgr5
 u7c1UpNuc48NQQpyoXCuElaZ4yCalfQ/vwmO7zxRTSyXWGcazmCQCAsF769OnI+EgqfeXfy32
 xX1inLy3ewM5hnDnn2V8iBN0Huz7bmvlpIKcIrSaApb3QIbJH2fqS87Y7DuW2KTMYxJp7NoiM
 qMh9UOfi785oPp7wFOYi/edLlsjdVkau7HxRPxj3CXvMN5EsbbuL35UlkHDFV0NQVjdp7SddF
 7l3/98m4v6l7Yxzy2zdHLQVEZElxOEGdPUITc3sWY6Tq2acyewN5hUxX/I7YS0QXq5/KWOR39
 gb/0gYszmxnIBpLbRsXjFQGK5u31WAZ1bO2pjIdfqSMqNWht/QRwpb2Su/k1jTv37irOiD6wW
 Y/4k+BjO4UANnC8d9cglmmFmLqroZtGeOtsdMuet0fNPcUeTjVoTHVJzIVqgRQW5gmF0p301Z
 PFTiXtSv2aMd+p6QaH1LajflIu3b0YRsoIdUeuoXmr+dk28VcQ7JF60KBrXT2w3zmJQh5FPdQ
 C+RC+m1mIkpio1B+Q2sWsvXR0/fyMsyqVJNriIRIseDyclU9dZTRnGvTeAGbp6bwEQH87GLzg
 B31nrOJL6U34zf3w6qAPh2gChqsCJOfFat9SizOMQ36wtuWiuugd4CQ3WEuTKMilZiyaHJwwo
 cf3dSiKFEiiXe8BW64x4E0c5YArv+bkKfIAxLunzGrHR15sLVJGlM/JCoFl/4T2jwz8Nf1RUv
 xzA4Dj812bn+sehRpSDq20K6ofUGpP9Qp2V3UnXB+/P0UIjfH9uF9eXkogrNLVMPJ1zKll0Mk
 GspifwKsB5Y6/z0GXKYyVEdBltZ1j0WC8Hs
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Thanks Sven for having a good look.

There is no cfg80211 module present on the system (find /lib/modules/4.15.=
0-1032-aws/ -name *80211*).
Package linux-modules-4.15.0-1032-aws is installed.

The module linux-modules-extra-4.15.0-1032 installs the following files:

/lib/modules/4.15.0-1032-gcp/kernel/net/wireless/cfg80211.ko
/lib/modules/4.15.0-1032-gke/kernel/net/wireless/cfg80211.ko
/lib/modules/4.15.0-1032-azure/kernel/net/wireless/cfg80211.ko

But this is not in the *-aws path.

On 7/6/19 2:16 PM, Sven Eckelmann wrote:
> On Friday, 5 July 2019 16:51:56 CEST Moritz Warning wrote:
>> on an AWS server I get this error:
>>
>> $ modprobe batman-adv
>> $ dmesg
>> ...
>> [ 1310.125438] batman_adv: Unknown symbol cfg80211_get_station (err 0)
>>
>> $ uname -a
>> Linux ip-172-31-47-217 4.15.0-1032-aws #34-Ubuntu SMP Thu Jan 17 15:18:=
09 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>>
>
> I have downloaded the headers [1] and they have following defined in
> include/config/cfg80211.h:
>
>     #if IS_ENABLED(CONFIG_CFG80211)
>     /**
>      * cfg80211_get_station - retrieve information about a given station
>      * @dev: the device where the station is supposed to be connected to
>      * @mac_addr: the mac address of the station of interest
>      * @sinfo: pointer to the structure to fill with the information
>      *
>      * Returns 0 on success and sinfo is filled with the available infor=
mation
>      * otherwise returns a negative error code and the content of sinfo =
has to be
>      * considered undefined.
>      */
>     int cfg80211_get_station(struct net_device *dev, const u8 *mac_addr,
>     			 struct station_info *sinfo);
>     #else
>     static inline int cfg80211_get_station(struct net_device *dev,
>     				       const u8 *mac_addr,
>     				       struct station_info *sinfo)
>     {
>     	return -ENOENT;
>     }
>     #endif
>
> So this function should be always defined by the kernel. Either through =
this
> header or through the cfg80211 module (which can be part of the kernel b=
inary
> itself).
>
> I have then downloaded the config deb [2]. It has the .config file inclu=
ded
>
>     $ grep CONFIG_CFG80211 usr/src/linux-headers-4.15.0-1032-aws/.config
>     CONFIG_CFG80211=3Dm
>     # CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
>     # CONFIG_CFG80211_CERTIFICATION_ONUS is not set
>     CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=3Dy
>     CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=3Dy
>     CONFIG_CFG80211_DEFAULT_PS=3Dy
>     CONFIG_CFG80211_DEBUGFS=3Dy
>     CONFIG_CFG80211_CRDA_SUPPORT=3Dy
>     CONFIG_CFG80211_WEXT=3Dy
>
> So it is enabled as a module. So please load this module. And if it is n=
ot
> included in any package (what I am currently suspecting), please contact=
 the
> maintainers [3]. They either have to ship the modules or disable any mod=
ules
> in their build. But building them and not shipping is breaking the
> dependencies of other modules (as shown by you).
>
> Kind regards,
> 	Sven
>
> [1] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-aws-hea=
ders-4.15.0-1032_4.15.0-1032.34_all.deb
> [2] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-headers=
-4.15.0-1032-aws_4.15.0-1032.34_amd64.deb
> [3] https://bugs.launchpad.net/ubuntu/+source/linux-aws/+filebug
>

