.class public final La/a/a/i;
.super Ljava/lang/Object;
.source "ID3v2Header.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:B

.field b:B

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/i;-><init>(B)V

    .line 45
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-byte v1, p0, La/a/a/i;->a:B

    .line 302
    iput-byte v1, p0, La/a/a/i;->b:B

    .line 304
    iput-boolean v1, p0, La/a/a/i;->c:Z

    .line 305
    iput-boolean v1, p0, La/a/a/i;->d:Z

    .line 306
    iput-boolean v1, p0, La/a/a/i;->e:Z

    .line 309
    iput v1, p0, La/a/a/i;->g:I

    .line 62
    const/4 v0, 0x3

    iput-byte v0, p0, La/a/a/i;->a:B

    .line 63
    iput-byte v1, p0, La/a/a/i;->b:B

    .line 64
    iput-boolean v1, p0, La/a/a/i;->c:Z

    .line 65
    iput-boolean v1, p0, La/a/a/i;->d:Z

    .line 66
    iput-boolean v1, p0, La/a/a/i;->e:Z

    .line 67
    iput v1, p0, La/a/a/i;->g:I

    .line 68
    return-void
.end method

.method public constructor <init>(La/a/a/m;)V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-byte v2, p0, La/a/a/i;->a:B

    .line 302
    iput-byte v2, p0, La/a/a/i;->b:B

    .line 304
    iput-boolean v2, p0, La/a/a/i;->c:Z

    .line 305
    iput-boolean v2, p0, La/a/a/i;->d:Z

    .line 306
    iput-boolean v2, p0, La/a/a/i;->e:Z

    .line 309
    iput v2, p0, La/a/a/i;->g:I

    .line 83
    const/16 v0, 0xa

    new-array v3, v0, [B

    invoke-virtual {p1, v3}, La/a/a/m;->a([B)V

    array-length v0, v3

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    new-instance v0, La/a/a/n;

    invoke-direct {v0}, La/a/a/n;-><init>()V

    throw v0

    :cond_0
    aget-byte v0, v3, v2

    const/16 v4, 0x49

    if-ne v0, v4, :cond_1

    aget-byte v0, v3, v1

    const/16 v4, 0x44

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    aget-byte v0, v3, v0

    const/16 v4, 0x33

    if-eq v0, v4, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    aget-byte v0, v3, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    aget-byte v0, v3, v5

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v7, :cond_5

    const/4 v0, 0x7

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v7, :cond_5

    const/16 v0, 0x8

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v7, :cond_5

    const/16 v0, 0x9

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v7, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    aget-byte v0, v3, v0

    iput-byte v0, p0, La/a/a/i;->a:B

    aget-byte v0, v3, v5

    iput-byte v0, p0, La/a/a/i;->b:B

    iget-byte v0, p0, La/a/a/i;->a:B

    and-int/lit16 v0, v0, 0xff

    if-gt v0, v5, :cond_8

    iget-byte v0, p0, La/a/a/i;->a:B

    if-ne v0, v5, :cond_9

    iget-byte v0, p0, La/a/a/i;->b:B

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_9

    :cond_8
    new-instance v0, La/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, La/a/a/i;->a:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, La/a/a/i;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aget-byte v0, v3, v6

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, -0x80

    if-lez v0, :cond_a

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/a/a/i;->c:Z

    aget-byte v0, v3, v6

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_b

    move v0, v1

    :goto_2
    iput-boolean v0, p0, La/a/a/i;->d:Z

    aget-byte v0, v3, v6

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_c

    move v0, v1

    :goto_3
    iput-boolean v0, p0, La/a/a/i;->e:Z

    aget-byte v0, v3, v6

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_d

    :goto_4
    iput-boolean v1, p0, La/a/a/i;->f:Z

    const/16 v0, 0x9

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/i;->g:I

    .line 84
    return-void

    :cond_a
    move v0, v2

    .line 83
    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v1, v2

    goto :goto_4
.end method
