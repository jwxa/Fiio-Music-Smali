.class public final La/a/a/d;
.super Ljava/lang/Object;
.source "ID3v2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:[[Ljava/lang/String;


# instance fields
.field protected b:Ljava/io/File;

.field c:La/a/a/i;

.field protected d:La/a/a/g;

.field protected e:Ljava/util/Vector;

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "TT2"

    aput-object v2, v1, v4

    const-string v2, "TIT2"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 79
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "PIC"

    aput-object v2, v1, v4

    const-string v2, "APIC"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 80
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "TAL"

    aput-object v2, v1, v4

    const-string v2, "TALB"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 81
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TCO"

    aput-object v3, v2, v4

    const-string v3, "TCON"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 82
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TBP"

    aput-object v3, v2, v4

    const-string v3, "TBPM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 83
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TYE"

    aput-object v3, v2, v4

    const-string v3, "TYER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 84
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TCM"

    aput-object v3, v2, v4

    const-string v3, "TCOM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 85
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TP1"

    aput-object v3, v2, v4

    const-string v3, "TPE1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 86
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TP2"

    aput-object v3, v2, v4

    const-string v3, "TPE2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 87
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TP3"

    aput-object v3, v2, v4

    const-string v3, "TPE3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 88
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TP4"

    aput-object v3, v2, v4

    const-string v3, "TPE4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 89
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TPA"

    aput-object v3, v2, v4

    const-string v3, "TPOS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 90
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TRK"

    aput-object v3, v2, v4

    const-string v3, "TRCK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 91
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TPB"

    aput-object v3, v2, v4

    const-string v3, "TPUB"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 92
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CMP"

    aput-object v3, v2, v4

    const-string v3, "TCMP"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 93
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "PCNT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 94
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "COMM"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 78
    sput-object v0, La/a/a/d;->a:[[Ljava/lang/String;

    .line 202
    return-void
.end method

.method public constructor <init>(La/a/a/m;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-boolean v2, p0, La/a/a/d;->f:Z

    .line 787
    iput-boolean v0, p0, La/a/a/d;->g:Z

    .line 788
    iput-boolean v0, p0, La/a/a/d;->h:Z

    .line 789
    iput-boolean v0, p0, La/a/a/d;->i:Z

    .line 118
    iput-object v1, p0, La/a/a/d;->b:Ljava/io/File;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iput-object p2, p0, La/a/a/d;->j:Ljava/lang/String;

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, La/a/a/i;

    invoke-direct {v0, p1}, La/a/a/i;-><init>(La/a/a/m;)V

    iput-object v0, p0, La/a/a/d;->c:La/a/a/i;
    :try_end_0
    .catch La/a/a/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    iget-boolean v0, v0, La/a/a/i;->d:Z

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, La/a/a/g;

    invoke-direct {v0, p1}, La/a/a/g;-><init>(La/a/a/m;)V

    iput-object v0, p0, La/a/a/d;->d:La/a/a/g;

    .line 146
    :goto_0
    invoke-direct {p0, p1}, La/a/a/d;->a(La/a/a/m;)V

    .line 149
    iput-boolean v2, p0, La/a/a/d;->f:Z

    .line 150
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    iput-object v1, p0, La/a/a/d;->c:La/a/a/i;

    .line 132
    iput-object v1, p0, La/a/a/d;->d:La/a/a/g;

    .line 133
    iput-object v1, p0, La/a/a/d;->e:Ljava/util/Vector;

    goto :goto_1

    .line 143
    :cond_1
    iput-object v1, p0, La/a/a/d;->d:La/a/a/g;

    goto :goto_0
.end method

.method private a(La/a/a/m;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 839
    iget-object v0, p0, La/a/a/d;->d:La/a/a/g;

    if-eqz v0, :cond_4

    .line 842
    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    iget v0, v0, La/a/a/i;->g:I

    iget-object v2, p0, La/a/a/d;->d:La/a/a/g;

    invoke-virtual {v2}, La/a/a/g;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    .line 843
    iget-object v2, p0, La/a/a/d;->d:La/a/a/g;

    invoke-virtual {v2}, La/a/a/g;->b()I

    move-result v2

    .line 842
    sub-int/2addr v0, v2

    .line 852
    :goto_0
    new-array v6, v0, [B

    .line 853
    invoke-virtual {p1, v6}, La/a/a/m;->a([B)V

    .line 856
    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    iget-boolean v0, v0, La/a/a/i;->c:Z

    if-eqz v0, :cond_0

    .line 858
    array-length v0, v6

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v4, v6

    if-lt v0, v4, :cond_5

    array-length v0, v6

    if-eq v2, v0, :cond_c

    new-array v0, v2, [B

    invoke-static {v7, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-eqz v3, :cond_8

    .line 859
    :goto_3
    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 867
    :cond_1
    iget-object v2, p0, La/a/a/d;->d:La/a/a/g;

    if-eqz v2, :cond_2

    iget-object v2, p0, La/a/a/d;->d:La/a/a/g;

    invoke-virtual {v2}, La/a/a/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 873
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 874
    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 875
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 877
    iget-object v2, p0, La/a/a/d;->d:La/a/a/g;

    invoke-virtual {v2}, La/a/a/g;->d()J

    .line 886
    :cond_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, La/a/a/d;->e:Ljava/util/Vector;

    .line 888
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v0, v5

    .line 893
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    if-nez v0, :cond_9

    .line 907
    :cond_3
    return-void

    .line 848
    :cond_4
    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    iget v0, v0, La/a/a/i;->g:I

    goto :goto_0

    .line 858
    :cond_5
    aget-byte v4, v6, v0

    if-ne v4, v9, :cond_7

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_6

    add-int/lit8 v3, v2, 0x1

    aput-byte v9, v7, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v5

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v2, 0x1

    aput-byte v9, v7, v2

    move v2, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v2, 0x1

    aget-byte v8, v6, v0

    aput-byte v8, v7, v2

    move v2, v4

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 895
    :cond_9
    new-instance v4, La/a/a/h;

    iget-object v2, p0, La/a/a/d;->c:La/a/a/i;

    iget-byte v2, v2, La/a/a/i;->a:B

    const/4 v6, 0x2

    if-gt v2, v6, :cond_a

    move v2, v5

    :goto_6
    invoke-direct {v4, v3, v2}, La/a/a/h;-><init>(Ljava/io/InputStream;Z)V

    .line 897
    invoke-virtual {v4}, La/a/a/h;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v6, La/a/a/h;->a:Ljava/lang/String;

    if-ne v2, v6, :cond_b

    move v0, v1

    .line 901
    goto :goto_4

    :cond_a
    move v2, v1

    .line 895
    goto :goto_6

    .line 904
    :cond_b
    iget-object v2, p0, La/a/a/d;->e:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    move-object v0, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, La/a/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 775
    sget-object v0, La/a/a/d;->a:[[Ljava/lang/String;

    aget-object v1, v0, p1

    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/d;->c:La/a/a/i;

    iget-byte v0, v0, La/a/a/i;->a:B

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, La/a/a/d;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, La/a/a/o;

    invoke-direct {v0}, La/a/a/o;-><init>()V

    throw v0

    .line 484
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 486
    iget-object v0, p0, La/a/a/d;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 499
    new-instance v0, La/a/a/k;

    invoke-direct {v0}, La/a/a/k;-><init>()V

    throw v0

    .line 488
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/h;

    .line 490
    invoke-virtual {v0}, La/a/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 503
    :cond_3
    return-object v1
.end method

.method public final b()La/a/a/r;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, v0}, La/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a/a/b;->a(La/a/a/d;Ljava/lang/String;)[B

    move-result-object v1

    .line 444
    if-nez v1, :cond_0

    .line 445
    new-instance v0, La/a/a/r;

    invoke-direct {v0}, La/a/a/r;-><init>()V

    .line 462
    :goto_0
    return-object v0

    .line 447
    :cond_0
    new-instance v0, La/a/a/r;

    invoke-direct {v0}, La/a/a/r;-><init>()V

    .line 449
    new-instance v2, La/a/a/q;

    iget-object v3, p0, La/a/a/d;->j:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, La/a/a/q;-><init>([BLjava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v1, p0, La/a/a/d;->c:La/a/a/i;

    iget-byte v1, v1, La/a/a/i;->a:B
    :try_end_0
    .catch La/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 453
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, La/a/a/q;->a(I)[B

    move-result-object v3

    const-string v4, "iso-8859-1"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/r;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch La/a/a/p; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :goto_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v2, v1}, La/a/a/q;->a(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/r;->a([B)V

    .line 459
    invoke-virtual {v2}, La/a/a/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/r;->b(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v2}, La/a/a/q;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/r;->b([B)V
    :try_end_2
    .catch La/a/a/p; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    throw v0

    .line 457
    :cond_1
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v2, v1}, La/a/a/q;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/r;->a(Ljava/lang/String;)V
    :try_end_3
    .catch La/a/a/p; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 455
    :catch_1
    move-exception v1

    goto :goto_1
.end method
