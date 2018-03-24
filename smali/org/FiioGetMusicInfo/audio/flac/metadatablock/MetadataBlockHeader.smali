.class public Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;
.super Ljava/lang/Object;
.source "MetadataBlockHeader.java"


# static fields
.field public static final BLOCK_LENGTH:I = 0x3

.field public static final BLOCK_TYPE_LENGTH:I = 0x1

.field public static final HEADER_LENGTH:I = 0x4


# instance fields
.field private blockType:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

.field private bytes:[B

.field private dataLength:I

.field private isLastBlock:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 75
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    .line 76
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->values()[Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 78
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->values()[Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    .line 79
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    .line 81
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    .line 82
    :goto_1
    if-lt v2, v4, :cond_1

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    aput-byte v1, v0, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_2
    new-instance v3, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->FLAC_NO_BLOCKTYPE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v4, v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    .line 104
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 105
    iput p3, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    .line 108
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->getId()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 116
    :goto_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    const/high16 v0, 0xff0000

    and-int/2addr v0, p3

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    const v0, 0xff00

    and-int/2addr v0, p3

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    .line 124
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 128
    return-void

    .line 114
    :cond_0
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->getId()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 51
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 53
    if-ge v1, v2, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read required number of databytes read:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":required:4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 58
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method private u(I)I
    .locals 1

    .prologue
    .line 132
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBlockType()Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    return-object v0
.end method

.method public getBytesWithoutIsLastBlockFlag()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 153
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    return v0
.end method

.method public isLastBlock()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlockType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLastBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
