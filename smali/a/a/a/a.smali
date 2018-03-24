.class public final La/a/a/a;
.super Ljava/lang/Object;
.source "Bytes.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, La/a/a/a;-><init>([BII)V

    .line 19
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1, p2, p3}, La/a/a/a;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a;->a:J

    .line 33
    return-void
.end method

.method private static a([BII)J
    .locals 6

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    move-wide v2, v0

    move v0, p1

    .line 91
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 97
    return-wide v2

    .line 94
    :cond_0
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    sub-int v4, p2, v0

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, La/a/a/a;->a:J

    return-wide v0
.end method
