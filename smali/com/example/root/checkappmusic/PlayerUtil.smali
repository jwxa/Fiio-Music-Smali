.class public Lcom/example/root/checkappmusic/PlayerUtil;
.super Ljava/lang/Object;
.source "PlayerUtil.java"


# static fields
.field public static final BufferSizeMax_DSD:I = 0x20000

.field public static final ENCODING_PCM_32BIT:I = 0xa

.field public static final Encoding_dsd128:I = 0x8

.field public static final Encoding_dsd256:I = 0x9

.field public static final Encoding_dsd64:I = 0x7

.field public static final GAPLESS:I = 0x14d

.field public static final GETBUFFER_MSG:Ljava/lang/String; = "GetBufferMsg"

.field public static final GETBUFFER_MSG_1:I = 0xe

.field public static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field public static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_NOP:I = 0x0

.field public static final MEDIA_PAUSED:I = 0x7

.field public static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field public static final MEDIA_PLAYER_PREPARE_OK:I = 0x6f

.field public static final MEDIA_PREPARED:I = 0x1

.field public static final MEDIA_SEEK_COMPLETE:I = 0x4

.field public static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field public static final MEDIA_SKIPPED:I = 0x9

.field public static final MEDIA_STARTED:I = 0x6

.field public static final MEDIA_STOPPED:I = 0x8

.field public static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field public static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final PLAY_MSG:I = 0xa

.field public static final RESUME_MSG:I = 0xb

.field public static final SACD_PLAY_MSG:I = 0xc

.field public static final SACD_RESUME_MSG:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetResampleBuffer([BII)[B
    .locals 10

    .prologue
    .line 200
    if-ne p1, p2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object p0

    .line 205
    :cond_1
    const/4 v0, 0x1

    .line 206
    const/16 v1, 0x8

    new-array v7, v1, [B

    .line 208
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p2

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 214
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_2

    .line 215
    const/4 v0, 0x6

    .line 217
    :cond_2
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    .line 218
    const/4 v0, 0x4

    .line 220
    :cond_3
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_4

    .line 221
    const/4 v0, 0x3

    .line 223
    :cond_4
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    .line 224
    const/4 v0, 0x2

    .line 226
    :cond_5
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_6

    .line 227
    const/4 v0, -0x3

    .line 229
    :cond_6
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v4, v8

    if-gez v1, :cond_7

    .line 230
    const/4 v0, -0x4

    .line 232
    :cond_7
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/example/root/checkappmusic/PlayerUtil;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1c

    .line 233
    const/4 v0, -0x5

    move v6, v0

    .line 238
    :goto_1
    if-lez v6, :cond_c

    .line 239
    array-length v0, p0

    mul-int/2addr v0, v6

    new-array v3, v0, [B

    .line 244
    const/4 v0, 0x0

    .line 245
    const/4 v1, 0x0

    .line 246
    const/4 v2, 0x0

    :goto_2
    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-le v2, v4, :cond_8

    move-object p0, v3

    .line 258
    goto/16 :goto_0

    .line 247
    :cond_8
    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x8

    if-lt v4, v5, :cond_9

    .line 250
    add-int/lit8 v0, v0, 0x8

    .line 251
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-lt v5, v6, :cond_a

    .line 246
    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 248
    :cond_9
    add-int v5, v0, v4

    aget-byte v5, p0, v5

    aput-byte v5, v7, v4

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 252
    :cond_a
    const/4 v4, 0x0

    :goto_5
    const/16 v8, 0x8

    if-lt v4, v8, :cond_b

    .line 255
    add-int/lit8 v1, v1, 0x8

    .line 251
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 253
    :cond_b
    add-int v8, v1, v4

    aget-byte v9, v7, v4

    aput-byte v9, v3, v8

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 261
    :cond_c
    const/4 v0, -0x3

    if-ne v6, v0, :cond_10

    .line 263
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 266
    const/4 v0, 0x0

    .line 267
    const/4 v1, 0x0

    .line 268
    :goto_6
    array-length v3, p0

    add-int/lit8 v3, v3, -0x10

    if-le v0, v3, :cond_d

    move-object p0, v2

    .line 280
    goto/16 :goto_0

    .line 269
    :cond_d
    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x8

    if-lt v3, v4, :cond_e

    .line 272
    add-int/lit8 v3, v0, 0x8

    .line 273
    const/4 v0, 0x0

    :goto_8
    const/16 v4, 0x8

    if-lt v0, v4, :cond_f

    .line 276
    add-int/lit8 v1, v1, 0x8

    .line 277
    add-int/lit8 v0, v3, 0x8

    goto :goto_6

    .line 270
    :cond_e
    add-int v4, v0, v3

    aget-byte v4, p0, v4

    aput-byte v4, v7, v3

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 274
    :cond_f
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 283
    :cond_10
    const/4 v0, -0x4

    if-ne v6, v0, :cond_16

    .line 285
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 288
    const/4 v0, 0x0

    .line 289
    const/4 v1, 0x0

    .line 290
    :goto_9
    array-length v3, p0

    add-int/lit8 v3, v3, -0x10

    if-le v0, v3, :cond_11

    move-object p0, v2

    .line 310
    goto/16 :goto_0

    .line 291
    :cond_11
    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x8

    if-lt v3, v4, :cond_12

    .line 294
    add-int/lit8 v3, v0, 0x8

    .line 295
    const/4 v0, 0x0

    :goto_b
    const/16 v4, 0x8

    if-lt v0, v4, :cond_13

    .line 298
    add-int/lit8 v1, v1, 0x8

    .line 299
    const/4 v0, 0x0

    :goto_c
    const/16 v4, 0x8

    if-lt v0, v4, :cond_14

    .line 302
    add-int/lit8 v1, v1, 0x8

    .line 303
    const/4 v0, 0x0

    :goto_d
    const/16 v4, 0x8

    if-lt v0, v4, :cond_15

    .line 306
    add-int/lit8 v1, v1, 0x8

    .line 307
    add-int/lit8 v0, v3, 0x8

    goto :goto_9

    .line 292
    :cond_12
    add-int v4, v0, v3

    aget-byte v4, p0, v4

    aput-byte v4, v7, v3

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 296
    :cond_13
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 300
    :cond_14
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 304
    :cond_15
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 313
    :cond_16
    const/4 v0, -0x5

    if-ne v6, v0, :cond_0

    .line 315
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 318
    const/4 v0, 0x0

    .line 319
    const/4 v1, 0x0

    .line 320
    :goto_e
    array-length v3, p0

    add-int/lit8 v3, v3, -0x10

    if-le v0, v3, :cond_17

    move-object p0, v2

    .line 340
    goto/16 :goto_0

    .line 321
    :cond_17
    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x8

    if-lt v3, v4, :cond_18

    .line 324
    add-int/lit8 v3, v0, 0x8

    .line 325
    const/4 v0, 0x0

    :goto_10
    const/16 v4, 0x8

    if-lt v0, v4, :cond_19

    .line 328
    add-int/lit8 v1, v1, 0x8

    .line 329
    const/4 v0, 0x0

    :goto_11
    const/16 v4, 0x8

    if-lt v0, v4, :cond_1a

    .line 332
    add-int/lit8 v1, v1, 0x8

    .line 333
    const/4 v0, 0x0

    :goto_12
    const/16 v4, 0x8

    if-lt v0, v4, :cond_1b

    .line 336
    add-int/lit8 v1, v1, 0x8

    .line 337
    add-int/lit8 v0, v3, 0x8

    goto :goto_e

    .line 322
    :cond_18
    add-int v4, v0, v3

    aget-byte v4, p0, v4

    aput-byte v4, v7, v3

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 326
    :cond_19
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 330
    :cond_1a
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 334
    :cond_1b
    add-int v4, v1, v0

    aget-byte v5, v7, v0

    aput-byte v5, v2, v4

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    move v6, v0

    goto/16 :goto_1
.end method

.method public static GetSampedRateToPlay(IZZ)I
    .locals 9

    .prologue
    const v8, 0x56220

    const v1, 0x2b110

    const v3, 0xbb80

    const v0, 0x2ee00

    const v2, 0xac44

    .line 42
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 43
    invoke-static {}, Lcom/fiio/music/j/a;->a()I

    move-result v4

    .line 44
    const-string v5, "zengxy--"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playUTils + InputSampleRate-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 v5, 0x1770

    if-eq p0, v5, :cond_0

    .line 46
    const/16 v5, 0x1f40

    if-eq p0, v5, :cond_0

    .line 47
    const/16 v5, 0x2ee0

    if-eq p0, v5, :cond_0

    .line 48
    const/16 v5, 0x3e80

    if-eq p0, v5, :cond_0

    .line 49
    const/16 v5, 0x5dc0

    if-ne p0, v5, :cond_1

    :cond_0
    move p0, v3

    .line 129
    :goto_0
    return p0

    .line 56
    :cond_1
    const v5, 0xfa00

    if-ne p0, v5, :cond_2

    move p0, v0

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    const v5, 0x1f400

    if-ne p0, v5, :cond_3

    move p0, v0

    .line 61
    goto :goto_0

    .line 67
    :cond_3
    if-nez v4, :cond_4

    const v5, 0x5dc00

    if-ne p0, v5, :cond_4

    move p0, v0

    .line 68
    goto :goto_0

    .line 71
    :cond_4
    if-nez v4, :cond_6

    if-eq p0, v8, :cond_5

    const v4, 0x55f00

    if-ne p0, v4, :cond_6

    :cond_5
    move p0, v1

    .line 72
    goto :goto_0

    .line 75
    :cond_6
    const/16 v4, 0x2b11

    if-eq p0, v4, :cond_7

    const/16 v4, 0x5622

    if-ne p0, v4, :cond_8

    :cond_7
    move p0, v2

    .line 76
    goto :goto_0

    .line 80
    :cond_8
    const/16 v4, 0x7d00

    if-eq p0, v4, :cond_9

    .line 81
    if-eq p0, v2, :cond_9

    .line 82
    if-eq p0, v3, :cond_9

    .line 83
    const v3, 0x15888

    if-eq p0, v3, :cond_9

    .line 84
    const v3, 0x17700

    if-eq p0, v3, :cond_9

    .line 85
    if-eq p0, v1, :cond_9

    .line 86
    if-eq p0, v0, :cond_9

    .line 87
    if-eq p0, v8, :cond_9

    .line 88
    const v0, 0x55f00

    if-eq p0, v0, :cond_9

    .line 89
    const v0, 0x5dc00

    if-ne p0, v0, :cond_a

    .line 90
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InputSampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move p0, v2

    .line 97
    goto :goto_0

    .line 101
    :cond_b
    const/16 v4, 0x1770

    if-eq p0, v4, :cond_c

    .line 102
    const/16 v4, 0x1f40

    if-eq p0, v4, :cond_c

    .line 103
    const/16 v4, 0x2ee0

    if-eq p0, v4, :cond_c

    .line 104
    const/16 v4, 0x3e80

    if-eq p0, v4, :cond_c

    .line 105
    const/16 v4, 0x5dc0

    if-eq p0, v4, :cond_c

    .line 106
    const/16 v4, 0x7d00

    if-eq p0, v4, :cond_c

    .line 107
    if-eq p0, v3, :cond_c

    .line 108
    const v4, 0xfa00

    if-eq p0, v4, :cond_c

    .line 109
    const v4, 0x17700

    if-eq p0, v4, :cond_c

    .line 110
    const v4, 0x1f400

    if-eq p0, v4, :cond_c

    .line 111
    const v4, 0x5dc00

    if-ne p0, v4, :cond_d

    :cond_c
    move p0, v3

    .line 113
    goto/16 :goto_0

    .line 115
    :cond_d
    if-ne p0, v8, :cond_e

    move p0, v1

    .line 116
    goto/16 :goto_0

    .line 119
    :cond_e
    const/16 v3, 0x2b11

    if-eq p0, v3, :cond_f

    .line 120
    const/16 v3, 0x5622

    if-eq p0, v3, :cond_f

    .line 121
    if-eq p0, v8, :cond_f

    .line 122
    if-eq p0, v2, :cond_f

    .line 123
    const v3, 0x15888

    if-eq p0, v3, :cond_f

    .line 124
    if-eq p0, v1, :cond_f

    .line 125
    if-ne p0, v0, :cond_10

    :cond_f
    move p0, v2

    .line 127
    goto/16 :goto_0

    :cond_10
    move p0, v2

    .line 129
    goto/16 :goto_0
.end method

.method public static GetSampedRateToPlayForSeamless(I)I
    .locals 5

    .prologue
    const v3, 0xbb80

    const v1, 0x2b110

    const v2, 0xac44

    const v0, 0x2ee00

    .line 135
    .line 136
    const/16 v4, 0x1f40

    if-eq p0, v4, :cond_0

    .line 137
    const/16 v4, 0x2ee0

    if-eq p0, v4, :cond_0

    .line 138
    const/16 v4, 0x3e80

    if-eq p0, v4, :cond_0

    .line 139
    const/16 v4, 0x5dc0

    if-ne p0, v4, :cond_1

    :cond_0
    move p0, v3

    .line 162
    :goto_0
    rem-int v2, p0, v2

    if-nez v2, :cond_9

    .line 167
    :goto_1
    return v1

    .line 142
    :cond_1
    const v4, 0xfa00

    if-ne p0, v4, :cond_2

    move p0, v0

    .line 144
    goto :goto_0

    :cond_2
    const v4, 0x1f400

    if-ne p0, v4, :cond_3

    move p0, v0

    .line 146
    goto :goto_0

    :cond_3
    const v4, 0x5dc00

    if-ne p0, v4, :cond_4

    move p0, v0

    .line 148
    goto :goto_0

    :cond_4
    const v4, 0x56220

    if-ne p0, v4, :cond_5

    move p0, v1

    .line 150
    goto :goto_0

    :cond_5
    const/16 v4, 0x2b11

    if-eq p0, v4, :cond_6

    const/16 v4, 0x5622

    if-ne p0, v4, :cond_7

    :cond_6
    move p0, v2

    .line 152
    goto :goto_0

    :cond_7
    const/16 v4, 0x7d00

    if-eq p0, v4, :cond_8

    .line 153
    if-eq p0, v2, :cond_8

    .line 154
    if-eq p0, v3, :cond_8

    .line 155
    const v3, 0x15888

    if-eq p0, v3, :cond_8

    .line 156
    const v3, 0x17700

    if-eq p0, v3, :cond_8

    .line 37
    if-eq p0, v1, :cond_8

    .line 158
    if-ne p0, v0, :cond_a

    .line 159
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InputSampleRate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move v1, v0

    .line 165
    goto :goto_1

    :cond_a
    move p0, v2

    goto :goto_0
.end method

.method private static abs(D)D
    .locals 2

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 172
    neg-double p0, p0

    .line 174
    :cond_0
    return-wide p0
.end method

.method public static changMonoToStereo([B)[B
    .locals 4

    .prologue
    .line 348
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 350
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 360
    return-object v1

    .line 351
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 352
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 353
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 354
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 355
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x4

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 356
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 357
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 358
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 350
    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static change24BitTo32Bit([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 178
    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 187
    return-object p0

    :cond_0
    move v2, v1

    .line 180
    :goto_1
    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 178
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 182
    :cond_1
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    .line 183
    add-int v4, v0, v2

    add-int/lit8 v5, v0, 0x4

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    aput-byte v5, p0, v4

    .line 184
    add-int/lit8 v4, v0, 0x4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, p0, v4

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
