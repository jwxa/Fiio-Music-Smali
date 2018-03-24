.class public Lorg/justcodecs/dsd/Scarletbook$AreaTOC;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static tb:[B


# instance fields
.field access_list_offset:S

.field area_description_offset:S

.field area_description_phonetic_offset:S

.field area_mute_flags:B

.field channel_count:B

.field copyright_offset:S

.field copyright_phonetic_offset:S

.field data:[B

.field frame_format:B

.field frames:B

.field id:[B

.field index_list_offset:S

.field locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

.field loudspeaker_config:B

.field major:B

.field max_available_channels:B

.field max_byte_rate:I

.field minor:B

.field minutes:B

.field sample_frequency:I

.field seconds:B

.field size:S

.field start:I

.field stereo:Z

.field text_area_count:B

.field track_attribute:B

.field track_count:B

.field track_end:I

.field track_offset:B

.field track_start:I

.field track_text_offset:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    .line 244
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    .line 252
    const/16 v0, 0x768

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->data:[B

    .line 216
    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa

    const/4 v0, 0x0

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    array-length v3, v3

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 260
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 261
    const-string v2, "TWOCHTOC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->stereo:Z

    .line 262
    iget-boolean v2, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->stereo:Z

    if-nez v2, :cond_0

    const-string v2, "MULCHTOC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "Unsupported area toc: %s at 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v4

    iget-object v6, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    array-length v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :cond_0
    :try_start_1
    iput p2, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->start:I

    .line 265
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 266
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->major:B

    .line 267
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minor:B

    .line 268
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->size:S

    .line 269
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 270
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->max_byte_rate:I

    .line 271
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 272
    const v1, 0xac440

    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->sample_frequency:I

    .line 273
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frame_format:B

    .line 274
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 275
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 276
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->channel_count:B

    .line 277
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->loudspeaker_config:B

    .line 278
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->max_available_channels:B

    .line 279
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_mute_flags:B

    .line 280
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 281
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 282
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_attribute:B

    .line 283
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0xf

    add-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 284
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 285
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minutes:B

    .line 286
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->seconds:B

    .line 287
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frames:B

    .line 288
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 289
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_offset:B

    .line 290
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_count:B

    .line 291
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    .line 292
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    .line 293
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 294
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->tb:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->text_area_count:B

    .line 296
    :goto_0
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 300
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_text_offset:S

    .line 301
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->index_list_offset:S

    .line 302
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->access_list_offset:S

    .line 303
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    add-long/2addr v0, v6

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 304
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_description_offset:S

    .line 305
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->copyright_offset:S

    .line 306
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_description_phonetic_offset:S

    .line 307
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->copyright_phonetic_offset:S

    .line 310
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    new-instance v2, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    invoke-direct {v2}, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;-><init>()V

    aput-object v2, v1, v0

    .line 298
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/justcodecs/dsd/Scarletbook$LocaleTable;->read(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AreaTOC [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->id:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->major:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minor:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->size:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    const-string v1, ", stereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->stereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max_byte_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->max_byte_rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sample_frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->sample_frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frame_format:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->channel_count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, ", loudspeaker_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->loudspeaker_config:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max_available_channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->max_available_channels:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_mute_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_mute_flags:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_attribute:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minutes:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->seconds:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->frames:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    const-string v1, ", track_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_offset:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text_area_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->text_area_count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->locales:[Lorg/justcodecs/dsd/Scarletbook$LocaleTable;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track_text_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->track_text_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index_list_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->index_list_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access_list_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->access_list_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area_description_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_description_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", copyright_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->copyright_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string v1, ", area_description_phonetic_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->area_description_phonetic_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string v1, ", copyright_phonetic_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->copyright_phonetic_offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
