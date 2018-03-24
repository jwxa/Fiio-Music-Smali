.class public abstract Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
.source "AbstractLyrics3v2FieldFrameBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 44
    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->getSize()I

    move-result v2

    .line 118
    new-array v3, v2, [B

    .line 119
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move v1, v0

    .line 127
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 130
    :cond_0
    add-int/lit8 v0, v2, -0x1

    if-le v1, v0, :cond_1

    .line 132
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Invalid size for Frame Body"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 137
    invoke-virtual {v0, v3, v1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->readByteArray([BI)V

    .line 139
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method protected readHeader(Ljava/io/RandomAccessFile;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 57
    new-array v0, v2, [B

    .line 60
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 61
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    if-nez v0, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Lyircs3v2 Field has size of zero."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 156
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 158
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 159
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0
.end method

.method protected writeHeader(Ljava/io/RandomAccessFile;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 81
    const/4 v0, 0x5

    new-array v2, v0, [B

    .line 87
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 89
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5

    if-lt v0, v4, :cond_0

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x0

    .line 96
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 102
    return-void

    .line 91
    :cond_0
    const/16 v4, 0x30

    aput-byte v4, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    add-int v4, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
