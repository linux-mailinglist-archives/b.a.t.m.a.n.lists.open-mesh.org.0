Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A72684FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 08:36:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8BA2C80797;
	Mon, 14 Sep 2020 08:36:07 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1A70D806FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 08:36:04 +0200 (CEST)
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>, Sven Eckelmann <sven@narfation.org>,
 Alessandro Bolletta <abolletta@netter.io>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
 <38142483.hY40ij8To5@ripper>
 <CADJ1cUQZ2YqFSVj=SNhPcC_sOjy+AkrEr=dQ=8T_0HegFou=Hw@mail.gmail.com>
 <4337705.76P5Ur0oAU@sven-edge>
From: Antonio Quartulli <a@unstable.cc>
Autocrypt: addr=a@unstable.cc; prefer-encrypt=mutual; keydata=
 mQINBFN3k+ABEADEvXdJZVUfqxGOKByfkExNpKzFzAwHYjhOb3MTlzSLlVKLRIHxe/Etj13I
 X6tcViNYiIiJxmeHAH7FUj/yAISW56lynAEt7OdkGpZf3HGXRQz1Xi0PWuUINa4QW+ipaKmv
 voR4b1wZQ9cZ787KLmu10VF1duHW/IewDx9GUQIzChqQVI3lSHRCo90Z/NQ75ZL/rbR3UHB+
 EWLIh8Lz1cdE47VaVyX6f0yr3Itx0ZuyIWPrctlHwV5bUdA4JnyY3QvJh4yJPYh9I69HZWsj
 qplU2WxEfM6+OlaM9iKOUhVxjpkFXheD57EGdVkuG0YhizVF4p9MKGB42D70pfS3EiYdTaKf
 WzbiFUunOHLJ4hyAi75d4ugxU02DsUjw/0t0kfHtj2V0x1169Hp/NTW1jkqgPWtIsjn+dkde
 dG9mXk5QrvbpihgpcmNbtloSdkRZ02lsxkUzpG8U64X8WK6LuRz7BZ7p5t/WzaR/hCdOiQCG
 RNup2UTNDrZpWxpwadXMnJsyJcVX4BAKaWGsm5IQyXXBUdguHVa7To/JIBlhjlKackKWoBnI
 Ojl8VQhVLcD551iJ61w4aQH6bHxdTjz65MT2OrW/mFZbtIwWSeif6axrYpVCyERIDEKrX5AV
 rOmGEaUGsCd16FueoaM2Hf96BH3SI3/q2w+g058RedLOZVZtyQARAQABtCFBbnRvbmlvIFF1
 YXJ0dWxsaSA8YUB1bnN0YWJsZS5jYz6JAj0EEwEIACcCGwMFCwkIBwMFFQoJCAsFFgIDAQAC
 HgECF4AFAlckqXIFCQ0TFw8ACgkQSPDMto9Z0Uxa1Q/+MDvZf6oxLEMe6AAl7I7LvUxz+Pdm
 e0hpdiYijuCVg/SJ6wMjsy8029gnp3gDlfFJGSkFJxVNFUSXb0YYQMuK550tZASsM5k68007
 78fLsDgy7DuUsGFZBQ4ZhA25k+TrneUcvfAkAbgi3vO8mbFmhuPc4eq86pcyTa70LeJWRWhZ
 ZlT8pHo9SWgSjxLhRPWxaf8MrFO/5cg97dguHHgIY5Wn1HNueUkl7jM/BoAC14McGhiw54ad
 TbXck5hMvGFizRry0NAasjDkSCFJTdiIcnSOiegvBSusR78txi8FRbX2hdIw9XunlD62dfZh
 IeEIYtu5QYlNrW2iqSksdyQL/kQ3Efd6F3oS3J+1HDwY/FB70lGyTIbGofttk17RvmFcRPI5
 RDn+NsxDClw1RN1PQ0kIxA45Yng0ca4oUmRqSx/0g5+xPE+lxxLtPn7qb84W85q6rKWzs6bQ
 NJAL/ZbuiUSbfp9bNOUUIkHc/EGhLHa4LQl+xuzTBXrzUlBPNXgeTSO7H22He3YXihii4tZw
 Zfn1dUk8eGFUDjmSqRIuaPL/j/P7ZaqR9HWQDjcHu6+S4w2eTpqjDhiy/YKo3ovje/jENlu3
 /HA1TOAlLzMy6RaFg1xEbH/lmMoAHPxKpcJ1YYKhD0FLKCj+Bn7eYV+H3t4AGjIyC1d6oQMb
 6xNVb5i5Ag0EX0ErxAEQAM1VGSLE3r/r3m8eMUxxbdc/21OGIWPtjLz9YiPnBeQ1IVQ4+GXU
 bRq5GVSaz4/PmTUeLtxydblzKvmaCi988h7XRdPqT9kZSWB4O1Ggb+9L53CLIGcPM74J0feQ
 vdZSfl9+Mf/VaVpsf7h6k1IXw3dXBAWimD2VOHmKVNn/LKYgEnZp2OG7MUx3NIRU4S8kJ+Gk
 TJhUdBntSvPcT9MSutZWhpc2hpS0/ROuMcF+0+PNxHiLqQep5tl/BXfY3zfPE+g3JafilvNG
 PN+IO0IwpcX8QMYfnnGT/rH78J0o4jtSvbX2PtyusieCbm/W8mA2/epJqMBHFJxDeqlw8Oee
 CkDBismaCHzT2RTbcngiNKt2nTslGqlnHgkAb8218e+0hMSWFblRlfkyQnChIqNk50SMlW/Q
 C2U+RcARVisUX2GGyEEd9/3QSpup9CCfYywqYgojFiujuif/xTjKBl8qRbaLu/n3P45S6+az
 lDyrtmRCDYeoF72USAyHe6+AyRku715JJmWU6e07NExVJP+bfynSLd6vQHnv2UBuouxVtCJd
 UoDNv7WOFWAecZ/JySpYlxBlk/h1P016ll2mUdC+OscI0kx+tOrxASE3vcx3sUHo9CnlwJLR
 jqnoU8UOqJnSSTfltBcRZovqvry1MyGZOg2bH/jVOpnlaz2LeMpJ8thFABEBAAGJBHIEGAEI
 ACYWIQTKvaEoIBfCZyGYhcdI8My2j1nRTAUCX0ErxAIbAgUJAeEzgAJACRBI8My2j1nRTMF0
 IAQZAQgAHRYhBGiU46UUk9CSN9fJICDI4i9bFhCrBQJfQSvEAAoJECDI4i9bFhCr6EEP/0kA
 CHopRYWwJV0652tGmRuipqN/NAIMRsdV9r39xAcrbjXopMW6h6p7fMmaZIVTmTrP88opZUgd
 3PuS4SAVUh+T3F+/+g+KywHsGRIhZnsRL4J3mSNoomfWSoj99Wqtvgh8GfRHEYTC3pBapgpQ
 Y76sPgov5gY35OyIT59gnXJCIoxBR/N8TR4vGZI7X0O+VagffD9mhH7dW+O+MgUQEDvB1pMa
 faTfUWv/1BftSG/84BQzeQR4cGn5S3pbpBNLLL9KYHX0fzJ7wEoBzgU412fdzAiM0K9vOC+b
 2Bzx3JKerIWDlWpQ+Wbv36nkJx0APqE8mFMolT5P6MuZvl1F6mJTX+6PFp7NEvE6/Upe1fkc
 tkSilv6nadaJ5r2A5GCwXVu3Y3OqgTGg45n/zHfx5Yv2UU7NbUXboR6JKRgwJDRv4yrTjubZ
 K5sRKQy7kIb94ed5hHtfKjv9MtU3C1yTTG+y3SUyA5GndTkxA9svrLqcBnQLtk7aRf2GJArs
 +f2IcxN9O1XQkPbJjacMBijF2tCMYvoHJu0AAM3nlRoDXWHolJ85v7Wt+bUXA36DA6v5n6Xx
 RPyREYslvame2FAtUz/+7wzcCPB9kPhUakaWK4GYu60Dm+/z8YRgYrr5Gzw5YWlZCUBU71vv
 2pS0L/DlornNwJd7CvoH8osqfDRCD6EGtZYP/3OSKF+e73bHGHNtBuTunxLP4gNgnToD1m1x
 baCzk33xvQiJfuRj2uth8ikslwAhSxlDIXpJLzTw1QVeSsua33kSffGMtYQr380RQshFrme3
 qCFtUO7ws0gPA6VkCgkRF0Lbp81s10fT8ErVC8MhQ4HfQxsH6Bxe9Mt3bg3ELoCCsQNELdQ6
 wApHycN8Ki6oo/lwlMBGnwwzhzizkSLrC+s2k9whQJGNaVPfG1o0/thp3ChLcaAIW2M5ZXvV
 7cQx4vudMF7zDJgkXRjibXr4QQRcAj1/PF3EGQc1K528nv/bTdPMPqvjyOjH0V/SGmOH+FoL
 AiAEgmYZazWp13FDX2OEYNAbiinK2iMIooTZPIP72I250wA8WI65Jf1hkgbteHGThVKGYvVk
 DXqenKP7lMC+PqhDDBoqC0EoabOJ1xdH+jaXv7lziH5DBD+Azth3wD2M6BSkW27iHksa5Ll+
 gFHPH3alp0KcPxABuohPAckdI2K7T0cIcwKoRmdt5PmT6iH2zSxCQqbP+TGhVQgwKmUgzKwM
 wR8o/PyzcODjLEWsaBQS/GyysfkFKjh06mJnKKt1euVfqGi1nxGUzvhFvVdqgrzous+LTniz
 ytakFE3E3yCyy+1NNAJANhCEzuvHNTRneazcrUhLPc9UDzdHqp4kQjOXOy5hU43T9lIb2mPW
 uQINBF9BLAgBEAC0+f8feJ/ypJEKVbLxcLjUhrYoCCx3bkx8AGo+9gqhwKPbXKdeUBy1pU8F
 ES6M6NZmBAyDJc9ZkD2PqWhrgZKjtcHXDQhuvReTVdcbHWMmrpjQlpPJqiLhslx2Mu6PqJuo
 waD3qS+XWyNP1FbkkpypoZfr2U0GyerC2kRlTsi7MLCyuqtpcJS8DDC2G7+PeIOFcxGwEnxK
 Kzvb39eY+6kaNNo3L3pK8BzJ3SknpWB9PjzVzZdjHLHalEUkWWQJwuE6YemYj4OFb/bJqNlG
 GgWiLrH9hK1DiNG2sqhO/apI+RiQx1tFg7WTfHL936aQQJGhufk8OZbzavFuMUqYmu9PDhgP
 9P/R6mOdlau9SR62FgV/wAT/GPjbKOZ0peS85f01Ywgpigd/ENkfPgxjgQ/dtdJHyEb2AYrb
 DplgzrFSYOTOva0owIbpcgPbYLm6qjYgiCdCIv3iqfuCxg7LmzIHYQEPbSNjjjVc2R6Ot2Oo
 FkAP0zjplcn/Beu1wgMhy96P57XiHdEcZrXkzCQHtvHChNMEDOozVlcsWuQ0HN9d2oLUGTqN
 KhxK3mYY38Jiq+xWNka159F8CIeHRwb5ZGc8Q3/dYxxHi3eLOtP/64pYZv1QznncYp/Q1Sgc
 gcZOT9gX2RzzppkiGaxSZIUROggDDnANWQiftm0nVIm2ihh82QARAQABiQI8BBgBCAAmFiEE
 yr2hKCAXwmchmIXHSPDMto9Z0UwFAl9BLAgCGwwFCQHhM4AACgkQSPDMto9Z0UxL7w/+ILqt
 mjeoI+GY/p2kaaqgeqvnPsq3mVzTYVZT+zyOS2wXvmKz7LuDmcbU7vJTGn3F+1VB+6JYMkmh
 24de1rCYcLieO9DudbDqizQwJKtNUKHxIKEDWBFgPWW/4exXUcgb5KtxK4238PLNLFonGX23
 r48WQNOxj1JwblYRis/eafdK5gXvG5w0NTjX2gGCE+RLo+U7ZENnXa5tp5CUjQaYgHx52dHk
 pMOLZX1VguMdiLbXzjc/xYUAW71Zdze/7Rr2ZNeN52Gkp4tlbPo8OAkpyB1uPuzhtpQf6dMF
 g4STNWfiMgVciwb8/Y0JNXvUwIm7hgmUt0jf4JrpB7svChXkM9nLCh58W31xjL3NZ/lHvo9C
 BuPF93MpALeh1e0NpLtNemDc4z2PeoU0c7d+xV8SYPz169NkOXLKgGjBylnOdSkHc/upeqlD
 AU6hStu/cRrca7OPdfK75JHs136ZhcsFCtbpDsJDwE6nKH+vCtWk9NayMf6OwarGF2vAPYE5
 muDxDXXmt1Z92lR/BjegUB/U6jnPKRcljjPqTHKcfjnCd6plnmaddYn7gvG6MCFGpyGeefTy
 0oqRlCQRQJI/rlMpPgl2H5EbJ6w6z6qVMlJoF/NUBp+4nObzj1QbGYCrQGsRu2KRRHrmaOI0
 8QRnNzBkJk/ejM/Es0pjrgC/I5iDlHw=
Message-ID: <97828d35-e1a9-9766-6e5b-7476a55e4014@unstable.cc>
Date: Mon, 14 Sep 2020 08:35:34 +0200
MIME-Version: 1.0
In-Reply-To: <4337705.76P5Ur0oAU@sven-edge>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600065364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xG8Lgq6bN61TqANhN1iJW7nLfmYSqgeqEBLpwP2mCEA=;
	b=tztIupwFUJqDktvlh0guRlwts2HlJPyHgZ9TCDFh96OvTDO4fOUWibHa20sa5o3RSIPLEC
	T5Hq3KRruE61S7nz13/WQCYToBKPBaSaB1fkr7YX0yNHth9WBN8cjb4w8l1vzBcXFKPOBz
	0YYUmKbqKuELGHVnsKWXlWUZ8+OaA9A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600065364; a=rsa-sha256;
	cv=none;
	b=fL/2I/h/ms/pJvGjL7MrMeDrrU/YdtAsS+vQ0ff7SNm+IuG8mpOjnHzfMTpg6vkfr2h6Qn
	4HC2klGj5GtY7Hltk85sy85jPj75RWMhWK7YSHwblh1+zLJGFrjBK88kzyKsFuRexXIJq1
	ggG4wFTs8yzhmV0eQQh3oft1DLMMVds=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of a@unstable.cc designates 5.148.176.60 as permitted sender) smtp.mailfrom=a@unstable.cc
Message-ID-Hash: 6LX2LODEIJGQ6EGO2TXJ3X4HOLSBKUHO
X-Message-ID-Hash: 6LX2LODEIJGQ6EGO2TXJ3X4HOLSBKUHO
X-MailFrom: a@unstable.cc
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6LX2LODEIJGQ6EGO2TXJ3X4HOLSBKUHO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 11/09/2020 16:02, Sven Eckelmann wrote:
> Maybe Antonio wants to add more things to this discussion.

I believe you and Simon have already been fairly exhaustive.

batman-adv simply won't forward any VLAN tagged traffic to nodes that
don't have that specific VLAN set up.

That's because batman-adv will instantiate a number of internal data
structures, along with routing logic, only when the VLAN is created.

Regards,

-- 
Antonio Quartulli
