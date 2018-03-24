.class public Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "TempoCode.java"


# static fields
.field private static final MAXIMUM_NO_OF_DIGITS:I = 0x2

.field private static final MINIMUM_NO_OF_DIGITS:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 70
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public readByteArray([BI)V
    .locals 4

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-gez p2, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "negative offset into an array offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 86
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    const-wide/16 v0, 0x0

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 91
    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 93
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 95
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, 0xff

    .line 101
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->getSize()I

    move-result v0

    .line 102
    new-array v3, v0, [B

    .line 103
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/TempoCode;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v0

    .line 105
    cmp-long v4, v0, v6

    if-ltz v4, :cond_0

    .line 107
    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 108
    const/4 v2, 0x1

    .line 109
    sub-long/2addr v0, v6

    .line 111
    :cond_0
    and-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    .line 112
    return-object v3
.end method
