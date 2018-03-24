.class public Lorg/seamless/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    .prologue
    .line 23
    array-length v0, p0

    new-array v1, v0, [B

    .line 24
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 25
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-object v1
.end method

.method public static toWrapper([B)[Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 31
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    .line 32
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 33
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method
