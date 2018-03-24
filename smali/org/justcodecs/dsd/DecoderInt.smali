.class public Lorg/justcodecs/dsd/DecoderInt;
.super Lorg/justcodecs/dsd/Decoder;
.source "DecoderInt.java"


# instance fields
.field lookupTableI:[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/justcodecs/dsd/Decoder;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    const/16 v0, 0x20

    .line 147
    array-length v1, p0

    if-lez v1, :cond_0

    .line 148
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    :cond_0
    new-instance v1, Lorg/justcodecs/dsd/DecoderInt;

    invoke-direct {v1}, Lorg/justcodecs/dsd/DecoderInt;-><init>()V

    invoke-virtual {v1, v0}, Lorg/justcodecs/dsd/DecoderInt;->analyzeTables(I)V

    .line 150
    return-void
.end method


# virtual methods
.method protected analyzeTables(I)V
    .locals 2

    .prologue
    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 155
    :sswitch_0
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_352:[D

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->inspectTable([DI)V

    goto :goto_0

    .line 158
    :sswitch_1
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_176:[D

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->inspectTable([DI)V

    goto :goto_0

    .line 161
    :sswitch_2
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_88:[D

    const/16 v1, 0x120

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->inspectTable([DI)V

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public varargs decodePCM([[I)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/justcodecs/dsd/DecoderInt;->clipping:I

    invoke-virtual {p0, v0, p1}, Lorg/justcodecs/dsd/DecoderInt;->getSamples2(I[[I)I

    move-result v0

    return v0
.end method

.method getSamples2(I[[I)I
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 37
    if-eqz p2, :cond_0

    array-length v0, p2

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v4}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 38
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Number of allocated sample buffers is less than number of channels"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/DSDFormat;->getSamples()Ljava/lang/Object;

    move-result-object v0

    .line 43
    instance-of v4, v0, [[B

    if-eqz v4, :cond_4

    .line 44
    check-cast v0, [[B

    move-object v7, v3

    move-object v8, v0

    .line 49
    :goto_0
    if-eqz v7, :cond_6

    move v0, v1

    .line 50
    :goto_1
    iget v3, p0, Lorg/justcodecs/dsd/DecoderInt;->ratio:I

    div-int/lit8 v9, v3, 0x8

    .line 51
    array-length v3, p2

    .line 52
    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    iget-object v5, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v5, v5

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v1, v4, :cond_7

    .line 53
    :cond_2
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v1

    if-nez v1, :cond_7

    .line 54
    const/4 v0, -0x1

    .line 115
    :cond_3
    :goto_2
    return v0

    .line 45
    :cond_4
    instance-of v4, v0, [B

    if-eqz v4, :cond_5

    .line 46
    check-cast v0, [B

    move-object v7, v0

    move-object v8, v3

    goto :goto_0

    .line 48
    :cond_5
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Unsupported buffer type"

    invoke-direct {v0, v1, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v0, v2

    .line 49
    goto :goto_1

    .line 56
    :cond_7
    if-eqz v0, :cond_f

    move v0, v2

    .line 57
    :goto_3
    aget-object v1, p2, v2

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 115
    :cond_8
    aget-object v0, p2, v2

    array-length v0, v0

    goto :goto_2

    :cond_9
    move v6, v2

    .line 59
    :goto_4
    if-lt v6, v3, :cond_b

    .line 78
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    mul-int v5, v9, v3

    add-int/2addr v4, v5

    iput v4, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 79
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v1, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v4, v4

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v1, v4, :cond_a

    .line 80
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 61
    :cond_b
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v8, v1

    move v4, v2

    move v1, v2

    :goto_5
    if-lt v4, v8, :cond_d

    .line 66
    if-lez p1, :cond_c

    .line 71
    if-le v1, p1, :cond_e

    move v1, p1

    .line 76
    :cond_c
    :goto_6
    aget-object v4, p2, v6

    aput v1, v4, v0

    .line 59
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    .line 62
    :cond_d
    iget-object v5, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v5, v5, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    mul-int v10, v4, v3

    add-int/2addr v5, v10

    add-int/2addr v5, v6

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    .line 63
    iget-object v10, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    aget-object v10, v10, v4

    aget v5, v10, v5

    add-int/2addr v5, v1

    .line 61
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_5

    .line 73
    :cond_e
    neg-int v4, p1

    if-ge v1, v4, :cond_c

    .line 74
    neg-int v1, p1

    goto :goto_6

    :cond_f
    move v0, v2

    .line 85
    :goto_7
    aget-object v1, p2, v2

    array-length v1, v1

    if-ge v0, v1, :cond_8

    move v6, v2

    .line 87
    :goto_8
    if-lt v6, v3, :cond_11

    .line 108
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    add-int/2addr v4, v9

    iput v4, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 109
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v1, v1, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v4, v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v4, v4, Lorg/justcodecs/dsd/DSDFormat;->bufEnd:I

    if-le v1, v4, :cond_10

    .line 110
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/DSDFormat;->readDataBlock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 89
    :cond_11
    aget-object v7, v8, v6

    .line 90
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v10, v1

    move v4, v2

    move v1, v2

    :goto_9
    if-lt v4, v10, :cond_13

    .line 96
    if-lez p1, :cond_12

    .line 101
    if-le v1, p1, :cond_14

    move v1, p1

    .line 106
    :cond_12
    :goto_a
    aget-object v4, p2, v6

    aput v1, v4, v0

    .line 87
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_8

    .line 91
    :cond_13
    iget-object v5, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    iget v5, v5, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    add-int/2addr v5, v4

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    .line 92
    iget-object v11, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    aget-object v11, v11, v4

    aget v5, v11, v5

    add-int/2addr v5, v1

    .line 90
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_9

    .line 103
    :cond_14
    neg-int v4, p1

    if-ge v1, v4, :cond_12

    .line 104
    neg-int v1, p1

    goto :goto_a
.end method

.method protected initLookupTable()I
    .locals 3

    .prologue
    .line 8
    iget v0, p0, Lorg/justcodecs/dsd/DecoderInt;->ratio:I

    sparse-switch v0, :sswitch_data_0

    .line 19
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible sample rate combination "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/justcodecs/dsd/DecoderInt;->ratio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :sswitch_0
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_352:[D

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->initLookupTableI([DI)V

    .line 21
    :goto_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v0, v0

    return v0

    .line 13
    :sswitch_1
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_176:[D

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->initLookupTableI([DI)V

    goto :goto_0

    .line 16
    :sswitch_2
    sget-object v0, Lorg/justcodecs/dsd/DecoderInt;->coefs_88:[D

    const/16 v1, 0x120

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DecoderInt;->initLookupTableI([DI)V

    goto :goto_0

    .line 8
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method initLookupTableI([DI)V
    .locals 10

    .prologue
    .line 119
    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 121
    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    .line 123
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 143
    return-void

    .line 125
    :cond_0
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    .line 126
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 127
    const/16 v1, 0x8

    .line 129
    :cond_1
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    const/16 v2, 0x100

    if-lt v7, v2, :cond_2

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    const-wide/16 v2, 0x0

    .line 131
    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    :goto_2
    if-lt v6, v1, :cond_3

    .line 140
    iget-object v2, p0, Lorg/justcodecs/dsd/DecoderInt;->lookupTableI:[[I

    aget-object v2, v2, v0

    iget v3, p0, Lorg/justcodecs/dsd/DecoderInt;->scale:I

    int-to-double v8, v3

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v7

    .line 129
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 133
    :cond_3
    iget-object v2, p0, Lorg/justcodecs/dsd/DecoderInt;->dsdf:Lorg/justcodecs/dsd/DSDFormat;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/DSDFormat;->isMSB()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    const/4 v2, 0x1

    rsub-int/lit8 v3, v6, 0x7

    shl-int/2addr v2, v3

    and-int/2addr v2, v7

    if-eqz v2, :cond_4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 138
    :goto_3
    mul-int/lit8 v8, v0, 0x8

    add-int/2addr v8, v6

    aget-wide v8, p1, v8

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    .line 131
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_2

    .line 134
    :cond_4
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_3

    .line 136
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
    .line 26
    invoke-super {p0}, Lorg/justcodecs/dsd/Decoder;->initParameters()V

    .line 27
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/justcodecs/dsd/DecoderInt;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v1, v1, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/justcodecs/dsd/DecoderInt;->scale:I

    .line 28
    iget v0, p0, Lorg/justcodecs/dsd/DecoderInt;->scale:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/DecoderInt;->clipping:I

    .line 29
    return-void
.end method

.method protected inspectTable([DI)V
    .locals 20

    .prologue
    .line 169
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    .line 170
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v4, v12

    .line 171
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_0
    if-lt v12, v13, :cond_0

    .line 193
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " min %f,  max %f, delts %f, neg min %f, max %f, delta %f, scale %f, norm: %f/%f%n"

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x1

    .line 194
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x2

    sub-double v16, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x5

    sub-double v16, v6, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x6

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x7

    sub-double v8, v10, v8

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v12, v13

    const/16 v8, 0x8

    sub-double v2, v6, v2

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v12, v8

    .line 193
    invoke-virtual {v4, v5, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 195
    return-void

    .line 171
    :cond_0
    aget-wide v4, p1, v12

    .line 172
    const-wide/16 v16, 0x0

    cmpl-double v16, v4, v16

    if-lez v16, :cond_4

    .line 173
    const-wide/16 v16, 0x0

    cmpl-double v16, v10, v16

    if-nez v16, :cond_1

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v4

    move-wide/from16 v4, v18

    .line 171
    :goto_1
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v4

    goto :goto_0

    .line 175
    :cond_1
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-nez v16, :cond_2

    move-wide v8, v10

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    cmpl-double v16, v4, v10

    if-lez v16, :cond_3

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v4

    move-wide/from16 v4, v18

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    cmpg-double v16, v4, v8

    if-gez v16, :cond_8

    move-wide v8, v10

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    .line 181
    goto :goto_1

    .line 182
    :cond_4
    neg-double v4, v4

    .line 183
    const-wide/16 v16, 0x0

    cmpl-double v16, v6, v16

    if-nez v16, :cond_5

    move-wide v6, v8

    move-wide v8, v10

    .line 184
    goto :goto_1

    .line 185
    :cond_5
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-nez v16, :cond_6

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    .line 186
    goto :goto_1

    .line 187
    :cond_6
    cmpl-double v16, v4, v10

    if-lez v16, :cond_7

    move-wide v6, v8

    move-wide v8, v10

    .line 188
    goto :goto_1

    .line 189
    :cond_7
    cmpg-double v16, v4, v8

    if-gez v16, :cond_8

    move-wide v8, v10

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    .line 190
    goto :goto_1

    :cond_8
    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    goto :goto_1
.end method
