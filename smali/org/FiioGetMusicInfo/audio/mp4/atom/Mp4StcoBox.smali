.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4StcoBox.java"


# static fields
.field public static final NO_OF_OFFSETS_LENGTH:I = 0x4

.field public static final NO_OF_OFFSETS_POS:I = 0x4

.field public static final OFFSET_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private firstOffSet:I

.field private noOfOffSets:I


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 37
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 26
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 110
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 113
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 116
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    .line 120
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    :goto_0
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-lt v0, v1, :cond_0

    .line 130
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 127
    add-int/2addr v1, p3

    .line 128
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static debugShowStcoInfo(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 232
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getStco(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->printAllOffsets()V

    .line 234
    return-void
.end method

.method public static getStco(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;
    .locals 3

    .prologue
    .line 154
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 165
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MVHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 166
    if-nez v1, :cond_1

    .line 168
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 178
    if-nez v1, :cond_2

    .line 180
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 184
    if-nez v1, :cond_3

    .line 186
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 191
    if-nez v1, :cond_4

    .line 193
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 199
    if-nez v1, :cond_5

    .line 201
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->SMHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 207
    if-nez v1, :cond_6

    .line 209
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 215
    if-nez v1, :cond_7

    .line 217
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_7
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 222
    if-nez v1, :cond_8

    .line 224
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This file does not appear to be an audio file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_8
    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v2, v1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 227
    return-object v2
.end method


# virtual methods
.method public adjustOffsets(I)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    if-lt v0, v1, :cond_0

    .line 99
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 95
    add-int/2addr v1, p1

    .line 96
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirstOffSet()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->firstOffSet:I

    return v0
.end method

.method public getNoOfOffSets()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    return v0
.end method

.method public printAllOffsets()V
    .locals 5

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Print Offsets:start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offset into audio data is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Print Offsets:end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 77
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offset into audio data is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printTotalOffset()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 55
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v0

    .line 57
    :goto_0
    iget v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->noOfOffSets:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 62
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr v0, v1

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Print Offset Total:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 60
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
