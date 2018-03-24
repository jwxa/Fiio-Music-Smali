.class public final La/a/a/h;
.super Ljava/lang/Object;
.source "ID3v2Frame.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:B

.field private g:I

.field private h:Z

.field private i:B

.field private j:Z

.field private k:[B

.field private l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    sput-object v0, La/a/a/h;->a:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-boolean v4, p0, La/a/a/h;->c:Z

    .line 458
    iput-boolean v4, p0, La/a/a/h;->d:Z

    .line 459
    iput-boolean v4, p0, La/a/a/h;->e:Z

    .line 460
    iput-byte v4, p0, La/a/a/h;->f:B

    .line 461
    iput v4, p0, La/a/a/h;->g:I

    .line 462
    iput-boolean v4, p0, La/a/a/h;->h:Z

    .line 463
    iput-byte v4, p0, La/a/a/h;->i:B

    .line 464
    iput-boolean v4, p0, La/a/a/h;->j:Z

    .line 116
    if-eqz p2, :cond_1

    const/4 v0, 0x6

    :goto_0
    new-array v5, v0, [B

    .line 117
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 120
    aget-byte v0, v5, v4

    if-nez v0, :cond_2

    .line 125
    sget-object v0, La/a/a/h;->a:Ljava/lang/String;

    iput-object v0, p0, La/a/a/h;->b:Ljava/lang/String;

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 130
    :cond_2
    new-instance v6, Ljava/lang/String;

    if-eqz p2, :cond_3

    move v0, v1

    :goto_2
    const-string v7, "iso-8859-1"

    invoke-direct {v6, v5, v4, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v6, p0, La/a/a/h;->b:Ljava/lang/String;

    .line 133
    new-instance v6, La/a/a/a;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_3
    if-eqz p2, :cond_5

    :goto_4
    invoke-direct {v6, v5, v0, v1}, La/a/a/a;-><init>([BII)V

    invoke-virtual {v6}, La/a/a/a;->a()J

    move-result-wide v0

    long-to-int v1, v0

    .line 135
    const/high16 v0, 0x100000

    if-le v1, v0, :cond_6

    .line 136
    new-instance v0, La/a/a/e;

    const-string v1, "Size of frame exceeds 1048576"

    invoke-direct {v0, v1}, La/a/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 130
    goto :goto_2

    :cond_4
    move v0, v2

    .line 133
    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    .line 137
    :cond_6
    if-nez p2, :cond_10

    .line 139
    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x80

    if-lez v0, :cond_7

    .line 140
    iput-boolean v3, p0, La/a/a/h;->c:Z

    .line 142
    :cond_7
    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_8

    .line 143
    iput-boolean v3, p0, La/a/a/h;->d:Z

    .line 145
    :cond_8
    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_9

    .line 146
    iput-boolean v3, p0, La/a/a/h;->e:Z

    .line 148
    :cond_9
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x80

    if-lez v0, :cond_a

    .line 149
    iput-boolean v3, p0, La/a/a/h;->h:Z

    .line 152
    :cond_a
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_f

    move v0, v3

    .line 156
    :goto_5
    const/16 v6, 0x9

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x20

    if-lez v5, :cond_e

    .line 162
    :goto_6
    iget-boolean v5, p0, La/a/a/h;->h:Z

    if-eqz v5, :cond_b

    .line 164
    new-array v2, v2, [B

    .line 165
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 166
    new-instance v5, La/a/a/a;

    invoke-direct {v5, v2}, La/a/a/a;-><init>([B)V

    invoke-virtual {v5}, La/a/a/a;->a()J

    move-result-wide v6

    long-to-int v2, v6

    iput v2, p0, La/a/a/h;->g:I

    .line 169
    add-int/lit8 v1, v1, -0x4

    .line 172
    :cond_b
    if-eqz v0, :cond_d

    .line 174
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/a/h;->f:B

    .line 175
    add-int/lit8 v0, v1, -0x1

    .line 178
    :goto_7
    if-eqz v3, :cond_c

    .line 180
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, La/a/a/h;->i:B

    .line 183
    add-int/lit8 v0, v0, -0x1

    .line 191
    :goto_8
    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/h;->k:[B

    .line 192
    iget-object v0, p0, La/a/a/h;->k:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 195
    iget-boolean v0, p0, La/a/a/h;->h:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, La/a/a/h;->k:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/h;->l:[B

    .line 197
    iget-object v0, p0, La/a/a/h;->k:[B

    iget-object v1, p0, La/a/a/h;->l:[B

    iget-object v2, p0, La/a/a/h;->k:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    invoke-direct {p0}, La/a/a/h;->c()V

    goto/16 :goto_1

    .line 186
    :cond_c
    iput-byte v4, p0, La/a/a/h;->i:B

    goto :goto_8

    :cond_d
    move v0, v1

    goto :goto_7

    :cond_e
    move v3, v4

    goto :goto_6

    :cond_f
    move v0, v4

    goto :goto_5

    :cond_10
    move v0, v1

    goto :goto_8
.end method

.method private c()V
    .locals 4

    .prologue
    .line 516
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, La/a/a/h;->l:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 520
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 524
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 527
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 532
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/h;->k:[B

    .line 533
    return-void

    .line 529
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    new-instance v0, La/a/a/e;

    invoke-direct {v0}, La/a/a/e;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, La/a/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, La/a/a/h;->k:[B

    return-object v0
.end method
