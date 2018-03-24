.class public Lorg/justcodecs/dsd/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Lorg/justcodecs/dsd/Filters;


# instance fields
.field protected clipping:I

.field protected dsdf:Lorg/justcodecs/dsd/DSDFormat;

.field private lookupTable:[[D

.field protected pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

.field protected ratio:I

.field rnd:Ljava/util/Random;

.field protected scale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeDSD(I[B)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 297
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Channels to decode to less than in source"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 298
    :cond_0
    array-length v0, p2

    rem-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Buffer length isn\'t multiply of number channels"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v0, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v0, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v1, v1, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v0, v1, :cond_4

    .line 301
    :cond_2
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v0

    if-nez v0, :cond_4

    .line 302
    const/4 v1, -0x1

    .line 326
    :cond_3
    :goto_0
    return v1

    .line 304
    :cond_4
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->getSamples()Ljava/lang/Object;

    move-result-object v0

    .line 305
    instance-of v1, v0, [[B

    if-eqz v1, :cond_7

    .line 306
    check-cast v0, [[B

    move v1, v2

    :cond_5
    move v3, v2

    .line 309
    :goto_1
    if-lt v3, p1, :cond_6

    .line 312
    iget-object v3, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v3, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 313
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 315
    iget-object v3, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v3, v3, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v3, v4, :cond_5

    .line 316
    iget-object v3, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v3}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 310
    :cond_6
    add-int/lit8 v4, v1, 0x1

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v6, v6, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    aget-byte v5, v5, v6

    aput-byte v5, p2, v1

    .line 309
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    .line 320
    :cond_7
    instance-of v1, v0, [B

    if-eqz v1, :cond_9

    .line 321
    check-cast v0, [B

    .line 322
    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 323
    array-length v1, v0

    iget-object v3, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v3, v3, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 324
    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v2, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    goto :goto_0

    .line 328
    :cond_8
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Channels down mixing isn\'t implemented yet"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 330
    :cond_9
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Unsupported buffer type"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs decodePCM([[I)I
    .locals 9

    .prologue
    .line 291
    iget v0, p0, Lorg/justcodecs/dsd/Decoder;->scale:I

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    iget v0, p0, Lorg/justcodecs/dsd/Decoder;->clipping:I

    int-to-double v6, v0

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lorg/justcodecs/dsd/Decoder;->getSamples1(DDDLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->close()V

    goto :goto_0
.end method

.method protected getLookupTable()[[D
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    return-object v0
.end method

.method public getSampleCount()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 69
    const-wide/16 v0, 0x0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->getSampleCount()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->getSampleRate()I

    move-result v0

    goto :goto_0
.end method

.method getSamples1(DDDLjava/lang/Object;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(DDDTS;)I"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    const/4 v3, 0x1

    .line 164
    move-object/from16 v0, p7

    instance-of v2, v0, [[S

    if-eqz v2, :cond_0

    .line 167
    check-cast p7, [[S

    .line 168
    move-object/from16 v0, p7

    array-length v5, v0

    .line 169
    const/4 v2, 0x0

    aget-object v2, p7, v2

    array-length v2, v2

    move/from16 v20, v2

    move v2, v5

    move-object/from16 v5, p7

    move-object/from16 p7, v4

    move v4, v3

    move/from16 v3, v20

    .line 182
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 183
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v3, "Allocated sample buffers less than number of channels"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 170
    :cond_0
    move-object/from16 v0, p7

    instance-of v2, v0, [[D

    if-eqz v2, :cond_1

    .line 171
    check-cast p7, [[D

    .line 172
    const/4 v3, 0x0

    .line 173
    move-object/from16 v0, p7

    array-length v4, v0

    .line 174
    const/4 v2, 0x0

    aget-object v2, p7, v2

    array-length v2, v2

    move/from16 v20, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v20

    .line 175
    goto :goto_0

    :cond_1
    move-object/from16 v0, p7

    instance-of v2, v0, [[I

    if-eqz v2, :cond_2

    .line 176
    check-cast p7, [[I

    .line 177
    move-object/from16 v0, p7

    array-length v6, v0

    .line 178
    const/4 v2, 0x0

    aget-object v2, p7, v2

    array-length v2, v2

    move/from16 v20, v2

    move v2, v6

    move-object/from16 v6, p7

    move-object/from16 p7, v4

    move v4, v3

    move/from16 v3, v20

    .line 179
    goto :goto_0

    .line 180
    :cond_2
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v3, "Unsupported type of samples buffer"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 184
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v9

    .line 186
    const-wide/16 v10, 0x0

    cmpl-double v2, p5, v10

    if-lez v2, :cond_6

    const/4 v2, 0x1

    move v7, v2

    .line 187
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/justcodecs/dsd/Decoder;->ratio:I

    div-int/lit8 v15, v2, 0x8

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->getSamples()Ljava/lang/Object;

    move-result-object v2

    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    instance-of v11, v2, [[B

    if-eqz v11, :cond_7

    .line 193
    check-cast v2, [[B

    move-object v14, v8

    move-object v13, v2

    .line 198
    :goto_2
    if-eqz v14, :cond_9

    const/4 v2, 0x1

    .line 199
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v8, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    if-ltz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    array-length v11, v8

    if-eqz v2, :cond_a

    move v8, v9

    :goto_4
    mul-int/2addr v8, v11

    add-int/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v10, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v8, v10, :cond_b

    .line 200
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v8

    if-nez v8, :cond_b

    .line 201
    const/4 v3, -0x1

    .line 287
    :cond_5
    :goto_5
    return v3

    .line 186
    :cond_6
    const/4 v2, 0x0

    move v7, v2

    goto :goto_1

    .line 194
    :cond_7
    instance-of v8, v2, [B

    if-eqz v8, :cond_8

    .line 195
    check-cast v2, [B

    move-object v14, v2

    move-object v13, v10

    goto :goto_2

    .line 197
    :cond_8
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v3, "Unsupported buffer type"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 198
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 199
    :cond_a
    const/4 v8, 0x1

    goto :goto_4

    .line 204
    :cond_b
    if-eqz v2, :cond_14

    .line 205
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_5

    .line 208
    const/4 v8, 0x0

    :goto_7
    if-lt v8, v9, :cond_c

    .line 241
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    mul-int v11, v15, v9

    add-int/2addr v10, v11

    iput v10, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 242
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v8, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    array-length v10, v10

    mul-int/2addr v10, v9

    add-int/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v10, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v8, v10, :cond_13

    .line 243
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v8

    if-nez v8, :cond_13

    move v3, v2

    .line 244
    goto :goto_5

    .line 209
    :cond_c
    const-wide/16 v10, 0x0

    .line 210
    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    :goto_8
    move/from16 v0, v16

    if-lt v13, v0, :cond_f

    .line 215
    mul-double v10, v10, p1

    .line 217
    const-wide/16 v12, 0x0

    cmpl-double v12, p3, v12

    if-lez v12, :cond_d

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/justcodecs/dsd/Decoder;->rnd:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->rnd:Ljava/util/Random;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    sub-double v12, v12, v16

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    .line 223
    :cond_d
    if-eqz v7, :cond_e

    .line 224
    cmpl-double v12, v10, p5

    if-lez v12, :cond_10

    move-wide/from16 v10, p5

    .line 229
    :cond_e
    :goto_9
    if-eqz v4, :cond_12

    .line 230
    if-nez v5, :cond_11

    .line 231
    aget-object v12, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    aput v13, v12, v2

    .line 236
    :goto_a
    aget-object v12, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v12, v2

    .line 208
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 211
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    move/from16 v17, v0

    add-int v17, v17, v12

    add-int v17, v17, v8

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    aget-wide v18, v18, v17

    add-double v10, v10, v18

    .line 210
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v9

    goto :goto_8

    .line 226
    :cond_10
    move-wide/from16 v0, p5

    neg-double v12, v0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_e

    .line 227
    move-wide/from16 v0, p5

    neg-double v10, v0

    goto :goto_9

    .line 233
    :cond_11
    aget-object v12, v5, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    int-to-short v13, v13

    aput-short v13, v12, v2

    goto :goto_a

    .line 235
    :cond_12
    aget-object v12, p7, v8

    aput-wide v10, v12, v2

    goto :goto_a

    .line 205
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 249
    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_5

    .line 251
    const/4 v8, 0x0

    move v12, v8

    :goto_c
    if-lt v12, v9, :cond_15

    .line 279
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    add-int/2addr v10, v15

    iput v10, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 280
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v8, v8, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    array-length v10, v10

    add-int/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v10, v10, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v8, v10, :cond_1c

    .line 281
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v8

    if-nez v8, :cond_1c

    move v3, v2

    .line 282
    goto/16 :goto_5

    .line 252
    :cond_15
    const-wide/16 v10, 0x0

    .line 253
    aget-object v14, v13, v12

    .line 254
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    :goto_d
    move/from16 v0, v16

    if-lt v8, v0, :cond_18

    .line 258
    mul-double v10, v10, p1

    .line 260
    const-wide/16 v16, 0x0

    cmpl-double v8, p3, v16

    if-lez v8, :cond_16

    .line 262
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->rnd:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/Decoder;->rnd:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v18

    sub-double v16, v16, v18

    mul-double v16, v16, p3

    add-double v10, v10, v16

    .line 264
    :cond_16
    if-eqz v7, :cond_17

    .line 265
    cmpl-double v8, v10, p5

    if-lez v8, :cond_19

    move-wide/from16 v10, p5

    .line 270
    :cond_17
    :goto_e
    if-eqz v4, :cond_1b

    .line 271
    if-nez v5, :cond_1a

    .line 272
    aget-object v8, v6, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v8, v2

    .line 251
    :goto_f
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    goto :goto_c

    .line 255
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    move/from16 v17, v0

    add-int v17, v17, v8

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    aget-wide v18, v18, v17

    add-double v10, v10, v18

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 267
    :cond_19
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v8, v10, v16

    if-gez v8, :cond_17

    .line 268
    move-wide/from16 v0, p5

    neg-double v10, v0

    goto :goto_e

    .line 274
    :cond_1a
    aget-object v8, v5, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v10, v10

    aput-short v10, v8, v2

    goto :goto_f

    .line 276
    :cond_1b
    aget-object v8, p7, v12

    aput-wide v10, v8, v2

    goto :goto_f

    .line 249
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b
.end method

.method public init(Lorg/justcodecs/dsd/DSDFormat;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    .line 59
    return-void
.end method

.method protected initLookupTable()I
    .locals 3

    .prologue
    .line 104
    iget v0, p0, Lorg/justcodecs/dsd/Decoder;->ratio:I

    sparse-switch v0, :sswitch_data_0

    .line 115
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible sample rate combination "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/justcodecs/dsd/Decoder;->ratio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 106
    :sswitch_0
    sget-object v0, Lorg/justcodecs/dsd/Decoder;->coefs_352:[D

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/Decoder;->initLookupTable([DI)V

    .line 117
    :goto_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    array-length v0, v0

    return v0

    .line 109
    :sswitch_1
    sget-object v0, Lorg/justcodecs/dsd/Decoder;->coefs_176:[D

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/Decoder;->initLookupTable([DI)V

    goto :goto_0

    .line 112
    :sswitch_2
    sget-object v0, Lorg/justcodecs/dsd/Decoder;->coefs_88:[D

    const/16 v1, 0x120

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/Decoder;->initLookupTable([DI)V

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method initLookupTable([DI)V
    .locals 10

    .prologue
    .line 130
    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 132
    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    .line 134
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 154
    return-void

    .line 136
    :cond_0
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    .line 137
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 138
    const/16 v1, 0x8

    .line 140
    :cond_1
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    const/16 v2, 0x100

    if-lt v7, v2, :cond_2

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    const-wide/16 v2, 0x0

    .line 142
    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    :goto_2
    if-lt v6, v1, :cond_3

    .line 151
    iget-object v2, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    aget-object v2, v2, v0

    aput-wide v4, v2, v7

    .line 140
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 144
    :cond_3
    iget-object v2, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->isMSB()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    const/4 v2, 0x1

    rsub-int/lit8 v3, v6, 0x7

    shl-int/2addr v2, v3

    and-int/2addr v2, v7

    if-eqz v2, :cond_4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 149
    :goto_3
    mul-int/lit8 v8, v0, 0x8

    add-int/2addr v8, v6

    aget-wide v8, p1, v8

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    .line 142
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_2

    .line 145
    :cond_4
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_3

    .line 147
    :cond_5
    const/4 v2, 0x1

    shl-int/2addr v2, v6

    and-int/2addr v2, v7

    if-eqz v2, :cond_6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_6
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_3
.end method

.method protected initParameters()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v1, v1, Lorg/justcodecs/dsd/Decoder$PCMFormat;->sampleRate:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/Decoder;->ratio:I

    .line 100
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v1, v1, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/Decoder;->clipping:I

    iput v0, p0, Lorg/justcodecs/dsd/Decoder;->scale:I

    .line 101
    return-void
.end method

.method public isDST()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->isDST()Z

    move-result v0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0, p1, p2}, Lorg/justcodecs/dsd/DSDFormat;->seek(J)V

    goto :goto_0
.end method

.method protected setLookupTable([[D)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/justcodecs/dsd/Decoder;->lookupTable:[[D

    .line 126
    return-void
.end method

.method public setPCMFormat(Lorg/justcodecs/dsd/Decoder$PCMFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Target PCM format has to be set after calling init"

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/justcodecs/dsd/Decoder;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    .line 50
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Decoder;->getSampleRate()I

    move-result v0

    iget-object v1, p0, Lorg/justcodecs/dsd/Decoder;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v1, v1, Lorg/justcodecs/dsd/Decoder$PCMFormat;->sampleRate:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "PCM sample rate doesn\'t multiply evenly 44100"

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Decoder;->initParameters()V

    .line 53
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {p0}, Lorg/justcodecs/dsd/Decoder;->initLookupTable()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/justcodecs/dsd/DSDFormat;->initBuffers(I)V

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/Decoder;->rnd:Ljava/util/Random;

    .line 55
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Decoder;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->sleep()V

    goto :goto_0
.end method
