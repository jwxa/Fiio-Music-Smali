.class public final La/a/a/g;
.super Ljava/lang/Object;
.source "ID3v2ExtendedHeader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/g;-><init>(B)V

    .line 45
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v1, p0, La/a/a/g;->a:I

    .line 246
    iput-boolean v1, p0, La/a/a/g;->b:Z

    .line 247
    iput v1, p0, La/a/a/g;->c:I

    .line 58
    iput-boolean v1, p0, La/a/a/g;->b:Z

    .line 59
    iget-boolean v0, p0, La/a/a/g;->b:Z

    .line 61
    iput v1, p0, La/a/a/g;->c:I

    .line 67
    iput v1, p0, La/a/a/g;->a:I

    .line 68
    return-void
.end method

.method public constructor <init>(La/a/a/m;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v2, p0, La/a/a/g;->a:I

    .line 246
    iput-boolean v2, p0, La/a/a/g;->b:Z

    .line 247
    iput v2, p0, La/a/a/g;->c:I

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 84
    invoke-virtual {p1, v0}, La/a/a/m;->a([B)V

    .line 87
    new-instance v1, La/a/a/a;

    invoke-direct {v1, v0, v2, v3}, La/a/a/a;-><init>([BII)V

    invoke-virtual {v1}, La/a/a/a;->a()J

    .line 90
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, -0x80

    if-lez v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/a/g;->b:Z

    .line 96
    :cond_0
    new-instance v1, La/a/a/a;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2, v3}, La/a/a/a;-><init>([BII)V

    invoke-virtual {v1}, La/a/a/a;->a()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, La/a/a/g;->a:I

    .line 99
    iget-boolean v0, p0, La/a/a/g;->b:Z

    if-eqz v0, :cond_1

    .line 101
    new-array v0, v3, [B

    .line 102
    invoke-virtual {p1, v0}, La/a/a/m;->a([B)V

    .line 103
    new-instance v1, La/a/a/a;

    invoke-direct {v1, v0}, La/a/a/a;-><init>([B)V

    invoke-virtual {v1}, La/a/a/a;->a()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, La/a/a/g;->c:I

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, La/a/a/g;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, La/a/a/g;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, La/a/a/g;->b:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 169
    iget v0, p0, La/a/a/g;->c:I

    int-to-long v0, v0

    return-wide v0
.end method
