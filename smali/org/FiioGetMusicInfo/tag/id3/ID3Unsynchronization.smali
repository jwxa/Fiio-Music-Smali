.class public Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;
.super Ljava/lang/Object;
.source "ID3Unsynchronization.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requiresUnsynchronization([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    move v0, v1

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 43
    :goto_1
    return v1

    .line 33
    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xe0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_2

    .line 35
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsynchronisation required found bit at:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 39
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 222
    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [B

    .line 223
    invoke-virtual {p0, v7, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v0, v1

    move v3, v2

    move v4, v2

    .line 226
    :goto_0
    if-lt v4, v6, :cond_0

    .line 233
    invoke-static {v7, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    return-object v0

    .line 228
    :cond_0
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v7, v4

    .line 229
    if-nez v0, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v7, v3

    .line 230
    :goto_1
    and-int/lit16 v3, v4, 0xff

    const/16 v4, 0xff

    if-eq v3, v4, :cond_2

    move v3, v0

    move v4, v5

    move v0, v1

    goto :goto_0

    :cond_2
    move v3, v0

    move v4, v5

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static unsynchronize([B)[B
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v1, 0x0

    .line 60
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 61
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    .line 101
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v7, :cond_1

    .line 103
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    const-string v2, "Adding unsynchronisation bit at end of stream"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 66
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    and-int/lit16 v4, v4, 0xff

    if-ne v4, v7, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 75
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 76
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_5

    .line 79
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing unsynchronisation bit at:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 83
    :cond_3
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0

    .line 86
    :cond_5
    if-nez v4, :cond_4

    .line 89
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 91
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Inserting zero unsynchronisation bit at:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 93
    :cond_6
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method
