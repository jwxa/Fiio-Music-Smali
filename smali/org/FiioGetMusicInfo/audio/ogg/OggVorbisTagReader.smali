.class public Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;
.super Ljava/lang/Object;
.source "OggVorbisTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "org.FiioGetMusicInfo.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    .line 56
    return-void
.end method

.method private convertToVorbisCommentPacket(Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B
    .locals 8

    .prologue
    const v7, 0xfe01

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    new-array v0, v0, [B

    .line 171
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 172
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 174
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 180
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Comments finish on 2nd Page because there is another packet on this page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Comments finish on 2nd Page because this packet is complete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    new-array v3, v7, [B

    .line 194
    :cond_2
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    .line 200
    if-ne v0, v7, :cond_3

    .line 201
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 202
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 218
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Comments finish on Page because there is another packet on this page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_3
    :try_start_1
    new-array v0, v0, [B

    .line 206
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 207
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v1

    .line 211
    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Comments finish on Page because this packet is complete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public convertToVorbisSetupHeaderPacket(JLjava/io/RandomAccessFile;)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 242
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 248
    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 254
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 258
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 259
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 260
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Unable to find setup header(2), unable to write ogg file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    sub-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 269
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 271
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 272
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 273
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 283
    :goto_0
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    .line 285
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Setupheader finishes on this page"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 311
    :goto_1
    return-object v0

    .line 277
    :cond_3
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 278
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 279
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 293
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Reading another page"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 294
    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 296
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 297
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 301
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 303
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Setupheader finishes on this page"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Setupheader finish on Page because this packet is complete"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1
.end method

.method public convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 329
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 332
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 335
    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 341
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 345
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 346
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 347
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Unable to find setup header(2), unable to write ogg file"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    sub-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 356
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_4

    .line 358
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 359
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 360
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 370
    :goto_0
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 372
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v4, "Setupheader finishes on this page"

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 375
    :goto_1
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 382
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 407
    :goto_2
    return-object v0

    .line 364
    :cond_4
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 365
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 366
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 377
    :cond_5
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 378
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 379
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 375
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 389
    :cond_6
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading another page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 390
    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 392
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 393
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 397
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_7

    .line 399
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Setupheader finishes on this page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    .line 404
    :cond_7
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 406
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Setupheader finish on Page because this packet is complete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2
.end method

.method public isVorbisCommentHeader([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x6

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    aget-byte v3, p1, v1

    sget-object v4, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "vorbis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public isVorbisSetupHeader([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x6

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 155
    aget-byte v3, p1, v1

    sget-object v4, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "vorbis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Starting to read ogg vorbis tag from file:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    move-result-object v0

    .line 76
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->vorbisCommentReader:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    .line 77
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v2, "CompletedReadCommentTag"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method public readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
    .locals 19

    .prologue
    .line 423
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Started to read comment and setup header sizes:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 429
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 433
    const/4 v8, 0x0

    .line 436
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 438
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 441
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 442
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1b

    int-to-long v10, v3

    sub-long/2addr v4, v10

    .line 445
    const/4 v3, 0x7

    new-array v3, v3, [B

    .line 446
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v3, "Cannot find comment block (no vorbiscomment header)"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v14, 0x7

    sub-long/2addr v10, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 452
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Found start of comment header at:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v6, v2

    .line 457
    :goto_0
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v3

    .line 458
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    add-int/2addr v8, v2

    .line 459
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 463
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    :cond_1
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Found end of comment:size:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "finishes at file position:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 476
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v6

    .line 477
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    .line 478
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 481
    const/4 v3, 0x7

    new-array v3, v3, [B

    .line 482
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 485
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    move-object v6, v2

    .line 455
    goto/16 :goto_0

    .line 487
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v14, 0x7

    sub-long/2addr v10, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 488
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found start of vorbis setup header at file position:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1b

    int-to-long v14, v3

    sub-long/2addr v10, v14

    .line 494
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v3

    .line 495
    sget-object v14, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Adding:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to setup header size"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 502
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-gt v2, v14, :cond_4

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 504
    :cond_4
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Found end of setupheader:size:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "finishes at:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 505
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_f

    .line 507
    const/4 v2, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v9, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move v9, v3

    move-wide v6, v10

    move-object v10, v2

    .line 600
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 601
    new-instance v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    invoke-direct/range {v3 .. v10}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;-><init>(JJIILjava/util/List;)V

    return-object v3

    .line 513
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    move v6, v3

    move-object v3, v2

    .line 517
    :goto_2
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    add-int/2addr v6, v2

    .line 518
    sget-object v14, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "Adding:"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " to setup header size"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 520
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-gt v2, v14, :cond_6

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_7

    .line 523
    :cond_6
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "Found end of setupheader:size:"

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "finishes at:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 524
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 526
    const/4 v2, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move v9, v6

    move-wide v6, v10

    move-object v10, v2

    .line 528
    goto/16 :goto_1

    .line 531
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    move-object v3, v2

    .line 515
    goto/16 :goto_2

    .line 538
    :cond_8
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 539
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    .line 542
    const/4 v3, 0x7

    new-array v3, v3, [B

    .line 543
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisSetupHeader([B)Z

    move-result v10

    if-nez v10, :cond_9

    .line 546
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expecting but got:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    array-length v3, v3

    int-to-long v8, v3

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 547
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_VORBIS_NO_VORBIS_HEADER_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v14, 0x7

    sub-long/2addr v10, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 550
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found start of vorbis setup header at file position:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1b

    int-to-long v14, v3

    sub-long/2addr v10, v14

    .line 554
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v3

    int-to-long v14, v3

    .line 553
    sub-long/2addr v10, v14

    .line 557
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v3

    .line 558
    sget-object v14, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Adding:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to setup header size"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 565
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x2

    if-gt v2, v14, :cond_a

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_b

    .line 567
    :cond_a
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Found end of setupheader:size:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "finishes at:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-le v2, v6, :cond_f

    .line 570
    const/4 v2, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v9, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move v9, v3

    move-wide v6, v10

    move-object v10, v2

    .line 572
    goto/16 :goto_1

    .line 576
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v9

    move v6, v3

    move-object v3, v2

    .line 580
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    add-int/2addr v6, v2

    .line 581
    sget-object v14, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "Adding:"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " to setup header size"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 582
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 583
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-gt v2, v14, :cond_c

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v2

    if-nez v2, :cond_d

    .line 586
    :cond_c
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "Found end of setupheader:size:"

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "finishes at:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 587
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 589
    const/4 v2, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move v9, v6

    move-wide v6, v10

    move-object v10, v2

    .line 591
    goto/16 :goto_1

    .line 594
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    move-object v3, v2

    .line 578
    goto/16 :goto_3

    :cond_e
    move v9, v6

    move-wide/from16 v17, v10

    move-object v10, v7

    move-wide/from16 v6, v17

    goto/16 :goto_1

    :cond_f
    move v9, v3

    move-wide/from16 v17, v10

    move-object v10, v7

    move-wide/from16 v6, v17

    goto/16 :goto_1
.end method

.method public readOggVorbisRawSize(Ljava/io/RandomAccessFile;)I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->readRawPacketData(Ljava/io/RandomAccessFile;)[B

    move-result-object v0

    .line 92
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public readRawPacketData(Ljava/io/RandomAccessFile;)[B
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 1st page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 2nd page"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 118
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 121
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->isVorbisCommentHeader([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Cannot find comment block (no vorbiscomment header)"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader;->convertToVorbisCommentPacket(Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;Ljava/io/RandomAccessFile;)[B

    move-result-object v0

    .line 128
    return-object v0
.end method
