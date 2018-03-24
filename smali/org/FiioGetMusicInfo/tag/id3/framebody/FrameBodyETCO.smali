.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyETCO.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final MILLISECONDS:I = 0x2

.field public static final MPEG_FRAMES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 113
    const-string v0, "TimeStampFormat"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 119
    return-void
.end method

.method private resolveRelativeTimestamps()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 287
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v2, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    return-void

    .line 289
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 291
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    .line 292
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->setTimestamp(J)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    goto :goto_1
.end method

.method private static varargs toSet([I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 339
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 343
    return-object v1

    .line 339
    :cond_0
    aget v3, p0, v0

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs addTimingCode(J[I)V
    .locals 15

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    .line 221
    const-string v2, "TimedEventList"

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    .line 224
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    .line 226
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    move-wide v6, v10

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_1
    move-object/from16 v0, p3

    array-length v11, v0

    move v9, v4

    move v10, v3

    :goto_2
    if-lt v9, v11, :cond_3

    .line 241
    return-void

    .line 226
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 228
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-nez v9, :cond_2

    .line 229
    :goto_3
    cmp-long v2, p1, v6

    if-ltz v2, :cond_0

    .line 231
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 234
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v6

    goto :goto_3

    .line 237
    :cond_3
    aget v5, p3, v9

    .line 238
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    const-string v3, "TimedEvent"

    move-object v4, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;IJ)V

    invoke-interface {v8, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 239
    add-int/lit8 v3, v10, 0x1

    .line 237
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v3

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public clearTimingCodes()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "ETCO"

    return-object v0
.end method

.method public getTimestampFormat()I
    .locals 1

    .prologue
    .line 144
    const-string v0, "TimeStampFormat"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public varargs getTimestamps([I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 197
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->toSet([I)Ljava/util/Set;

    move-result-object v1

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 203
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    .line 204
    :goto_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    goto :goto_1
.end method

.method public getTimingCodes()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    .line 169
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 174
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    .line 175
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 176
    if-nez v0, :cond_2

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [I

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v1

    aput v1, v8, v10

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    goto :goto_1

    .line 179
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    .line 180
    array-length v9, v0

    invoke-static {v0, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v1

    aput v1, v8, v0

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 300
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    .line 303
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v4, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    return-void

    .line 305
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 307
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    move-wide v2, v4

    .line 308
    :goto_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_1

    .line 310
    sget-object v8, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Event codes are not in chronological order. "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is followed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    move-wide v4, v2

    .line 313
    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    goto :goto_1
.end method

.method public varargs removeTimingCode(J[I)Z
    .locals 7

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->resolveRelativeTimestamps()V

    .line 255
    invoke-static {p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->toSet([I)Ljava/util/Set;

    move-result-object v2

    .line 256
    const-string v0, "TimedEventList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    const/4 v1, 0x0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 268
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    return v1

    .line 260
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 261
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 264
    const/4 v1, 0x1

    .line 266
    :cond_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method public setTimestampFormat(I)V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timestamp format must be 1 or 2 (ID3v2.4, 4.5): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    const-string v0, "TimeStampFormat"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TimeStampFormat"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;

    invoke-direct {v1, p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method
