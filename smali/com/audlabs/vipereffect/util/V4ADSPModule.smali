.class public Lcom/audlabs/vipereffect/util/V4ADSPModule;
.super Ljava/lang/Object;
.source "V4ADSPModule.java"


# static fields
.field public static final PARAM_FX_TYPE_SWITCH:I = 0x10001

.field public static final PARAM_GET_CONFIGURE:I = 0x8004

.field public static final PARAM_GET_CONVKNLID:I = 0x800a

.field public static final PARAM_GET_CONVUSABLE:I = 0x8009

.field public static final PARAM_GET_DRVCANWORK:I = 0x8005

.field public static final PARAM_GET_EFFECT_TYPE:I = 0x8007

.field public static final PARAM_GET_ENABLED:I = 0x8003

.field public static final PARAM_GET_NEONENABLED:I = 0x8002

.field public static final PARAM_GET_SAMPLINGRATE:I = 0x8008

.field public static final PARAM_GET_STREAMING:I = 0x8006

.field public static final PARAM_HPFX_AGC_MAXSCALER:I = 0x10020

.field public static final PARAM_HPFX_AGC_PROCESS_ENABLED:I = 0x1001d

.field public static final PARAM_HPFX_AGC_RATIO:I = 0x1001e

.field public static final PARAM_HPFX_AGC_VOLUME:I = 0x1001f

.field public static final PARAM_HPFX_ANALOGX_MODE:I = 0x10031

.field public static final PARAM_HPFX_ANALOGX_PROCESS_ENABLED:I = 0x10030

.field public static final PARAM_HPFX_COLM_DEPTH:I = 0x10014

.field public static final PARAM_HPFX_COLM_MIDIMAGE:I = 0x10013

.field public static final PARAM_HPFX_COLM_PROCESS_ENABLED:I = 0x10011

.field public static final PARAM_HPFX_COLM_WIDENING:I = 0x10012

.field public static final PARAM_HPFX_CONV_COMMITBUFFER:I = 0x10006

.field public static final PARAM_HPFX_CONV_CROSSCHANNEL:I = 0x10007

.field public static final PARAM_HPFX_CONV_PREPAREBUFFER:I = 0x10004

.field public static final PARAM_HPFX_CONV_PROCESS_ENABLED:I = 0x10002

.field public static final PARAM_HPFX_CONV_SETBUFFER:I = 0x10005

.field public static final PARAM_HPFX_CONV_UPDATEKERNEL:I = 0x10003

.field public static final PARAM_HPFX_CURE_CROSSFEED:I = 0x1002e

.field public static final PARAM_HPFX_CURE_PROCESS_ENABLED:I = 0x1002d

.field public static final PARAM_HPFX_DIFFSURR_DELAYTIME:I = 0x10016

.field public static final PARAM_HPFX_DIFFSURR_PROCESS_ENABLED:I = 0x10015

.field public static final PARAM_HPFX_DYNSYS_BASSGAIN:I = 0x10025

.field public static final PARAM_HPFX_DYNSYS_PROCESS_ENABLED:I = 0x10021

.field public static final PARAM_HPFX_DYNSYS_SIDEGAIN:I = 0x10024

.field public static final PARAM_HPFX_DYNSYS_XCOEFFS:I = 0x10022

.field public static final PARAM_HPFX_DYNSYS_YCOEFFS:I = 0x10023

.field public static final PARAM_HPFX_FETCOMP_ATTACK:I = 0x10051

.field public static final PARAM_HPFX_FETCOMP_AUTOATTACK_ENABLED:I = 0x10052

.field public static final PARAM_HPFX_FETCOMP_AUTOGAIN_ENABLED:I = 0x10050

.field public static final PARAM_HPFX_FETCOMP_AUTOKNEE_ENABLED:I = 0x1004e

.field public static final PARAM_HPFX_FETCOMP_AUTORELEASE_ENABLED:I = 0x10054

.field public static final PARAM_HPFX_FETCOMP_GAIN:I = 0x1004f

.field public static final PARAM_HPFX_FETCOMP_KNEEWIDTH:I = 0x1004d

.field public static final PARAM_HPFX_FETCOMP_META_ADAPT:I = 0x10059

.field public static final PARAM_HPFX_FETCOMP_META_CREST:I = 0x10058

.field public static final PARAM_HPFX_FETCOMP_META_KNEEMULTI:I = 0x10055

.field public static final PARAM_HPFX_FETCOMP_META_MAXATTACK:I = 0x10056

.field public static final PARAM_HPFX_FETCOMP_META_MAXRELEASE:I = 0x10057

.field public static final PARAM_HPFX_FETCOMP_META_NOCLIP_ENABLED:I = 0x1005a

.field public static final PARAM_HPFX_FETCOMP_PROCESS_ENABLED:I = 0x1004a

.field public static final PARAM_HPFX_FETCOMP_RATIO:I = 0x1004c

.field public static final PARAM_HPFX_FETCOMP_RELEASE:I = 0x10053

.field public static final PARAM_HPFX_FETCOMP_THRESHOLD:I = 0x1004b

.field public static final PARAM_HPFX_FIREQ_BANDLEVEL:I = 0x10010

.field public static final PARAM_HPFX_FIREQ_PROCESS_ENABLED:I = 0x1000f

.field public static final PARAM_HPFX_LIMITER_THRESHOLD:I = 0x10034

.field public static final PARAM_HPFX_OUTPUT_PAN:I = 0x10033

.field public static final PARAM_HPFX_OUTPUT_VOLUME:I = 0x10032

.field public static final PARAM_HPFX_REVB_DAMP:I = 0x1001a

.field public static final PARAM_HPFX_REVB_DRY:I = 0x1001c

.field public static final PARAM_HPFX_REVB_PROCESS_ENABLED:I = 0x10017

.field public static final PARAM_HPFX_REVB_ROOMSIZE:I = 0x10018

.field public static final PARAM_HPFX_REVB_WET:I = 0x1001b

.field public static final PARAM_HPFX_REVB_WIDTH:I = 0x10019

.field public static final PARAM_HPFX_TUBE_PROCESS_ENABLED:I = 0x1002f

.field public static final PARAM_HPFX_VDDC_COEFFS:I = 0x1000b

.field public static final PARAM_HPFX_VDDC_PROCESS_ENABLED:I = 0x1000a

.field public static final PARAM_HPFX_VHE_EFFECT_LEVEL:I = 0x10009

.field public static final PARAM_HPFX_VHE_PROCESS_ENABLED:I = 0x10008

.field public static final PARAM_HPFX_VIPERBASS_BASSGAIN:I = 0x10029

.field public static final PARAM_HPFX_VIPERBASS_MODE:I = 0x10027

.field public static final PARAM_HPFX_VIPERBASS_PROCESS_ENABLED:I = 0x10026

.field public static final PARAM_HPFX_VIPERBASS_SPEAKER:I = 0x10028

.field public static final PARAM_HPFX_VIPERCLARITY_CLARITY:I = 0x1002c

.field public static final PARAM_HPFX_VIPERCLARITY_MODE:I = 0x1002b

.field public static final PARAM_HPFX_VIPERCLARITY_PROCESS_ENABLED:I = 0x1002a

.field public static final PARAM_HPFX_VSE_BARK_RECONSTRUCT:I = 0x1000e

.field public static final PARAM_HPFX_VSE_PROCESS_ENABLED:I = 0x1000c

.field public static final PARAM_HPFX_VSE_REFERENCE_BARK:I = 0x1000d

.field public static final PARAM_SET_DOPROCESS_STATUS:I = 0x9004

.field public static final PARAM_SET_FORCEENABLE_STATUS:I = 0x9005

.field public static final PARAM_SET_RESET_STATUS:I = 0x9003

.field public static final PARAM_SET_SELFDIAGNOSE_STATUS:I = 0x9006

.field public static final PARAM_SET_UPDATE_STATUS:I = 0x9002

.field private static final PARAM_SPKFX_CORR_PROCESS_ENABLED:I = 0x10043

.field public static final V4A_FX_TYPE_HEADPHONE:I = 0x1

.field public static final V4A_FX_TYPE_NONE:I = 0x0

.field public static final V4A_FX_TYPE_SPEAKER:I = 0x2

.field private static instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;

    .line 124
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method private byteArrayToInt([B)I
    .locals 2

    .prologue
    .line 152
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private varargs concatArrays([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 158
    .line 159
    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 162
    new-array v3, v2, [B

    .line 164
    array-length v4, p1

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v4, :cond_1

    .line 168
    return-object v3

    .line 159
    :cond_0
    aget-object v4, p1, v0

    .line 160
    array-length v4, v4

    add-int/2addr v2, v4

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    aget-object v5, p1, v0

    .line 165
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v5, v5

    add-int/2addr v2, v5

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;

    if-nez v0, :cond_1

    .line 131
    const-class v1, Lcom/audlabs/vipereffect/util/V4ADSPModule;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;

    .line 131
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    sget-object v0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->instance:Lcom/audlabs/vipereffect/util/V4ADSPModule;

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private intToByteArray(I)[B
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private proceedIRBuffer_Headphone(Lcom/audlabs/vipereffect/util/IRSUtils;Ljava/lang/String;)V
    .locals 12

    .prologue
    const v2, 0x10004

    const/4 v0, 0x0

    .line 440
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 441
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 442
    invoke-virtual {p1}, Lcom/audlabs/vipereffect/util/IRSUtils;->getChannels()I

    move-result v1

    invoke-virtual {p0, v2, v4, v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 443
    invoke-virtual {p1}, Lcom/audlabs/vipereffect/util/IRSUtils;->readEntireData()[B

    move-result-object v5

    .line 448
    if-eqz v5, :cond_0

    array-length v1, v5

    if-gtz v1, :cond_1

    .line 449
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 489
    :goto_0
    return-void

    .line 453
    :cond_1
    array-length v1, v5

    invoke-static {v5, v1}, Lcom/audlabs/vipereffect/util/IRSUtils;->hashIRS([BI)J

    move-result-wide v2

    .line 454
    long-to-int v6, v2

    .line 456
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Kernel] Channels = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/audlabs/vipereffect/util/IRSUtils;->getChannels()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frames = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audlabs/vipereffect/util/IRSUtils;->getSampleCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    const-string v3, ", Bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    array-length v1, v5

    move v2, v0

    move v3, v1

    move v1, v0

    .line 477
    :goto_1
    if-gtz v3, :cond_3

    .line 479
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 484
    if-eqz v1, :cond_2

    .line 485
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/audlabs/vipereffect/util/IRSUtils;->hashIRS([BI)J

    move-result-wide v0

    long-to-int v0, v0

    .line 486
    :cond_2
    const v1, 0x10006

    invoke-virtual {p0, v1, v4, v6, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 467
    :cond_3
    const/16 v7, 0x1ff0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 468
    new-array v8, v7, [B

    .line 469
    invoke-static {v5, v2, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    add-int/2addr v2, v7

    .line 471
    sub-int/2addr v3, v7

    .line 472
    const-string v9, "ViPEREffect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setting kernel buffer, index = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v1, v1, 0x1

    .line 475
    div-int/lit8 v7, v7, 0x4

    .line 476
    const v9, 0x10005

    invoke-virtual {p0, v9, v4, v7, v8}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private proceedIRBuffer_Headphone(Ljava/lang/String;II)V
    .locals 12

    .prologue
    const v7, 0x10004

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 379
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 380
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 381
    invoke-virtual {p0, v7, v4, p2, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 382
    iget-object v1, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/audlabs/viperfx/base/V4AJniInterface;->ReadImpulseResponseToArray(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    .line 387
    if-eqz v5, :cond_0

    array-length v1, v5

    if-gtz v1, :cond_1

    .line 388
    :cond_0
    invoke-virtual {p0, v7, v0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 436
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-static {v5}, Lcom/audlabs/viperfx/base/V4AJniInterface;->GetHashImpulseResponseArray([B)[I

    move-result-object v1

    .line 394
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget v2, v1, v0

    if-nez v2, :cond_3

    .line 395
    :cond_2
    invoke-virtual {p0, v7, v0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 400
    :cond_3
    aget v6, v1, v6

    .line 401
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Kernel] Channels = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frames = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    array-length v1, v5

    move v2, v0

    move v3, v1

    move v1, v0

    .line 424
    :goto_1
    if-gtz v3, :cond_5

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 431
    if-eqz v1, :cond_4

    .line 432
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/audlabs/vipereffect/util/IRSUtils;->hashIRS([BI)J

    move-result-wide v0

    long-to-int v0, v0

    .line 433
    :cond_4
    const v1, 0x10006

    invoke-virtual {p0, v1, v4, v6, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 414
    :cond_5
    const/16 v7, 0x1ff0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 415
    new-array v8, v7, [B

    .line 416
    invoke-static {v5, v2, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    add-int/2addr v2, v7

    .line 418
    sub-int/2addr v3, v7

    .line 419
    const-string v9, "ViPEREffect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setting kernel buffer, index = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 422
    div-int/lit8 v7, v7, 0x4

    .line 423
    const v9, 0x10005

    invoke-virtual {p0, v9, v4, v7, v8}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method


# virtual methods
.method public extractDDCCoeffs(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 587
    const-string v0, "vipereffect.headphonefx.viperddc.device"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    :cond_0
    const-string v0, "ViPEREffect"

    const-string v2, "extractDDCCoeffs(): DeviceID not found."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 603
    :cond_1
    :goto_0
    return-object v0

    .line 593
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "vipereffect.ddcblock."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/audlabs/vipereffect/data/DDCDatabase;->queryDDCBlock(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v0, v1

    .line 597
    goto :goto_0

    .line 600
    :cond_5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vipereffect.ddcblock."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public getParameter_Native([B[B)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public getParameter_px4_vx4x1(I)I
    .locals 4

    .prologue
    .line 355
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 356
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getParameter_Native([B[B)V

    .line 358
    invoke-direct {p0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->byteArrayToInt([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 361
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getParameter_px4_vx4x1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method public resetting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 913
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    .line 914
    const-string v1, "com.audlabs.vipereffect.headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    const-string v1, "vipereffect.headphonefx.vse.value"

    const-string v2, "0.1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 918
    const-string v1, "vipereffect.headphonefx.vse.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 921
    const-string v1, "vipereffect.headphonefx.fireq.custom"

    const-string v2, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 922
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 923
    const-string v1, "vipereffect.headphonefx.fireq"

    const-string v2, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 924
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 925
    const-string v1, "vipereffect.headphonefx.fireq.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 928
    const-string v1, "vipereffect.headphonefx.convolver.kernel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 929
    const-string v1, "vipereffect.headphonefx.convolver.crosschannel"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 930
    const-string v1, "vipereffect.headphonefx.convolver.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 933
    const-string v1, "vipereffect.headphonefx.colorfulmusic.coeffs"

    const-string v2, "120;200"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 934
    const-string v1, "vipereffect.headphonefx.colorfulmusic.midimage"

    const-string v2, "150"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 935
    const-string v1, "vipereffect.headphonefx.colorfulmusic.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 938
    const-string v1, "vipereffect.headphonefx.diffsurr.delay"

    const-string v2, "500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 939
    const-string v1, "vipereffect.headphonefx.diffsurr.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 952
    const-string v1, "vipereffect.headphonefx.reverb.roomsize"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 953
    const-string v1, "vipereffect.headphonefx.reverb.roomwidth"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 954
    const-string v1, "vipereffect.headphonefx.reverb.damp"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    const-string v1, "vipereffect.headphonefx.reverb.wet"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 956
    const-string v1, "vipereffect.headphonefx.reverb.dry"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 957
    const-string v1, "vipereffect.headphonefx.reverb.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 960
    const-string v1, "vipereffect.headphonefx.playbackgain.ratio"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 961
    const-string v1, "vipereffect.headphonefx.playbackgain.volume"

    const-string v2, "80"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 962
    const-string v1, "vipereffect.headphonefx.playbackgain.maxscaler"

    const-string v2, "400"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 963
    const-string v1, "vipereffect.headphonefx.playbackgain.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 966
    const-string v1, "vipereffect.headphonefx.fetcompressor.threshold"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 967
    const-string v1, "vipereffect.headphonefx.fetcompressor.ratio"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    const-string v1, "vipereffect.headphonefx.fetcompressor.knee"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 969
    const-string v1, "vipereffect.headphonefx.fetcompressor.gain"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 970
    const-string v1, "vipereffect.headphonefx.fetcompressor.attack"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 971
    const-string v1, "vipereffect.headphonefx.fetcompressor.release"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 972
    const-string v1, "vipereffect.headphonefx.fetcompressor.kneemulti"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 973
    const-string v1, "vipereffect.headphonefx.fetcompressor.maxattack"

    const-string v2, "80"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 974
    const-string v1, "vipereffect.headphonefx.fetcompressor.maxrelease"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 975
    const-string v1, "vipereffect.headphonefx.fetcompressor.crest"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 976
    const-string v1, "vipereffect.headphonefx.fetcompressor.adapt"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 977
    const-string v1, "vipereffect.headphonefx.fetcompressor.noclipenable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 978
    const-string v1, "vipereffect.headphonefx.fetcompressor.autoknee"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    const-string v1, "vipereffect.headphonefx.fetcompressor.autogain"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 980
    const-string v1, "vipereffect.headphonefx.fetcompressor.autoattack"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 981
    const-string v1, "vipereffect.headphonefx.fetcompressor.autorelease"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 982
    const-string v1, "vipereffect.headphonefx.fetcompressor.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 985
    const-string v1, "vipereffect.headphonefx.dynamicsystem.coeffs"

    const-string v2, "100;5600;40;80;50;50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 986
    const-string v1, "vipereffect.headphonefx.dynamicsystem.bass"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    const-string v1, "vipereffect.headphonefx.dynamicsystem.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 990
    const-string v1, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 991
    const-string v1, "vipereffect.headphonefx.fidelity.bass.freq"

    const-string v2, "40"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 992
    const-string v1, "vipereffect.headphonefx.fidelity.bass.gain"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 993
    const-string v1, "vipereffect.headphonefx.fidelity.bass.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 994
    const-string v1, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 995
    const-string v1, "vipereffect.headphonefx.fidelity.clarity.gain"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 996
    const-string v1, "vipereffect.headphonefx.fidelity.clarity.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 999
    const-string v1, "vipereffect.headphonefx.cure.crossfeed"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1000
    const-string v1, "vipereffect.headphonefx.cure.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1003
    const-string v1, "vipereffect.headphonefx.tube.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1006
    const-string v1, "vipereffect.headphonefx.analogx.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1007
    const-string v1, "vipereffect.headphonefx.analogx.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1015
    const-string v1, "vipereffect.headphonefx.outvol"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1016
    const-string v1, "vipereffect.headphonefx.channelpan"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1017
    const-string v1, "vipereffect.headphonefx.limiter"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1020
    const-string v1, "vipereffect.headphonefx.enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1022
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->updateSystem_Module()V

    .line 1023
    return-void
.end method

.method public setConvIRFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x10004

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const-string v0, "Kernel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aKernelPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    const-string v0, "ViPEREffect"

    const-string v1, "Convolver kernel does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 508
    :cond_3
    const-string v0, "ViPEREffect"

    const-string v1, "Convolver kernel exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-nez p1, :cond_4

    .line 512
    const-string v0, "ViPEREffect"

    const-string v1, "Clear convolver kernel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 516
    :cond_4
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Convolver kernel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 520
    const-string v0, "ViPEREffect"

    const-string v1, "Clear convolver kernel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 546
    :cond_5
    const-string v0, "ViPEREffect"

    const-string v1, "We are going to load irs through internal method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/audlabs/viperfx/base/V4AJniInterface;->IsLibraryUsable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 558
    const-string v0, "ViPEREffect"

    const-string v1, "We are going to load irs through jni"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/audlabs/viperfx/base/V4AJniInterface;->GetImpulseResponseInfoArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 561
    if-nez v0, :cond_6

    .line 562
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 564
    :cond_6
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    .line 565
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 568
    :cond_7
    aget v1, v0, v3

    if-nez v1, :cond_8

    .line 569
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 573
    :cond_8
    aget v1, v0, v4

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->proceedIRBuffer_Headphone(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 579
    :cond_9
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEqualizerLevels([F)V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    .line 618
    if-eqz p1, :cond_2

    .line 619
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 634
    :cond_0
    return-void

    .line 620
    :cond_1
    aget v1, p1, v0

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setV4AEqualizerBandLevel(II)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    .line 624
    const-string v2, "com.audlabs.vipereffect.headset"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 623
    const-string v2, "vipereffect.headphonefx.fireq.custom"

    const-string v3, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 629
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 630
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setV4AEqualizerBandLevel(II)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_1
.end method

.method public setParameter_Native([B[B)V
    .locals 0

    .prologue
    .line 350
    invoke-static {p1, p2}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPEREffect([B[B)V

    .line 351
    return-void
.end method

.method public setParameter_px4_vx1x1024(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 299
    :try_start_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 306
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 307
    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 308
    array-length v2, v0

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    .line 309
    array-length v2, v0

    rsub-int v2, v2, 0x400

    .line 310
    new-array v2, v2, [B

    .line 311
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 312
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 318
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx1x1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx1x256(II[B)V
    .locals 5

    .prologue
    .line 279
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 280
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 281
    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p3, v2, v0

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 282
    array-length v2, v0

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 283
    array-length v2, v0

    rsub-int v2, v2, 0x100

    .line 284
    new-array v2, v2, [B

    .line 285
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 286
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx1x256: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx2x8192(III[B)V
    .locals 5

    .prologue
    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 325
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 326
    invoke-direct {p0, p3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 327
    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object p4, v3, v0

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 328
    array-length v2, v0

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_0

    .line 329
    array-length v2, v0

    rsub-int v2, v2, 0x2000

    .line 330
    new-array v2, v2, [B

    .line 331
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v0

    .line 332
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 337
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx2x8192: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x1(II)V
    .locals 4

    .prologue
    .line 175
    const v0, 0x1001d

    if-ne p1, v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->playbackgain:Z

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const v0, 0x1004a

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->compressor:Z

    if-eqz v0, :cond_0

    .line 185
    :cond_2
    const v0, 0x1000c

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->vse:Z

    if-eqz v0, :cond_0

    .line 188
    :cond_3
    const v0, 0x1000f

    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->fireq:Z

    if-eqz v0, :cond_0

    .line 191
    :cond_4
    const v0, 0x10002

    if-ne p1, v0, :cond_5

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->convolver:Z

    if-eqz v0, :cond_0

    .line 194
    :cond_5
    const v0, 0x10011

    if-ne p1, v0, :cond_6

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->colorfulmusic:Z

    if-eqz v0, :cond_0

    .line 197
    :cond_6
    const v0, 0x10015

    if-ne p1, v0, :cond_7

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->diffsurr:Z

    if-eqz v0, :cond_0

    .line 203
    :cond_7
    const v0, 0x10017

    if-ne p1, v0, :cond_8

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->reverb:Z

    if-eqz v0, :cond_0

    .line 206
    :cond_8
    const v0, 0x10021

    if-ne p1, v0, :cond_9

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->dynamicsystem:Z

    if-eqz v0, :cond_0

    .line 209
    :cond_9
    const v0, 0x1002f

    if-ne p1, v0, :cond_a

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->tube:Z

    if-eqz v0, :cond_0

    .line 212
    :cond_a
    const v0, 0x10026

    if-ne p1, v0, :cond_b

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->bass:Z

    if-eqz v0, :cond_0

    .line 215
    :cond_b
    const v0, 0x1002a

    if-ne p1, v0, :cond_c

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->clarity:Z

    if-eqz v0, :cond_0

    .line 218
    :cond_c
    const v0, 0x1002d

    if-ne p1, v0, :cond_d

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->cure:Z

    if-eqz v0, :cond_0

    .line 221
    :cond_d
    const v0, 0x10030

    if-ne p1, v0, :cond_e

    sget-boolean v0, Lcom/audlabs/vipereffect/payment/PayMent;->analogx:Z

    if-eqz v0, :cond_0

    .line 224
    :cond_e
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 225
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx4x1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setParameter_px4_vx4x2(III)V
    .locals 5

    .prologue
    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 237
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 238
    invoke-direct {p0, p3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 239
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v1

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx4x2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x3(IIII)V
    .locals 6

    .prologue
    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 250
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 251
    invoke-direct {p0, p3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 252
    invoke-direct {p0, p4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 253
    const/4 v4, 0x3

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-direct {p0, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v1

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 257
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx4x3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x4(IIIII)V
    .locals 7

    .prologue
    .line 264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v0

    .line 265
    invoke-direct {p0, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 266
    invoke-direct {p0, p3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 267
    invoke-direct {p0, p4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 268
    invoke-direct {p0, p5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 269
    const/4 v5, 0x4

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-direct {p0, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->concatArrays([[B)[B

    move-result-object v1

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "ViPEREffect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParameter_px4_vx4x4: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vxString(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 344
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 345
    invoke-virtual {p0, p1, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx1x256(II[B)V

    .line 346
    return-void
.end method

.method setV4AEqualizerBandLevel(II)V
    .locals 1

    .prologue
    .line 637
    const v0, 0x10010

    invoke-virtual {p0, v0, p1, p2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 638
    return-void
.end method

.method public updateSystem_Module()V
    .locals 9

    .prologue
    const v8, 0x10002

    const/4 v7, 0x2

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/V4ADSPModule;->mContext:Landroid/content/Context;

    .line 642
    const-string v2, "com.audlabs.vipereffect.headset"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 645
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Commiting effects type"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const v0, 0x10001

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 651
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Commiting headphone-fx parameters"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Spectrum Extension."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "vipereffect.headphonefx.vse.value"

    const-string v3, "0.1"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x40b33333    # 5.6f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v5

    .line 666
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 668
    const v3, 0x1000e

    invoke-virtual {p0, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 669
    const v0, 0x1000d

    const/16 v3, 0x1db0

    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 670
    const-string v0, "vipereffect.headphonefx.vse.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const v0, 0x1000c

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 676
    :goto_0
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating FIR Equalizer."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v0, "vipereffect.headphonefx.fireq.custom"

    const-string v3, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 681
    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_3

    .line 684
    const-string v0, "vipereffect.headphonefx.fireq.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
    const v0, 0x1000f

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 690
    :goto_2
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Convolver."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v0, "vipereffect.headphonefx.convolver.kernel"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setConvIRFile(Ljava/lang/String;)V

    .line 693
    const v0, 0x10007

    .line 694
    const-string v3, "vipereffect.headphonefx.convolver.crosschannel"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 693
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 695
    const-string v0, "vipereffect.headphonefx.convolver.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    invoke-virtual {p0, v8, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 701
    :goto_3
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Field Surround (Colorful Music)."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v0, "vipereffect.headphonefx.colorfulmusic.coeffs"

    const-string v3, "120;200"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 704
    array-length v3, v0

    if-ne v3, v7, :cond_0

    .line 705
    const v3, 0x10012

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 706
    const v3, 0x10014

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 708
    :cond_0
    const v0, 0x10013

    .line 709
    const-string v3, "vipereffect.headphonefx.colorfulmusic.midimage"

    const-string v4, "150"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 708
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 710
    const-string v0, "vipereffect.headphonefx.colorfulmusic.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 711
    const v0, 0x10011

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 716
    :goto_4
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Diff Surround."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const v0, 0x10016

    .line 718
    const-string v3, "vipereffect.headphonefx.diffsurr.delay"

    const-string v4, "500"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 717
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 719
    const-string v0, "vipereffect.headphonefx.diffsurr.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 720
    const v0, 0x10015

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 735
    :goto_5
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Reverberation."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const v0, 0x10018

    .line 737
    const-string v3, "vipereffect.headphonefx.reverb.roomsize"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 736
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 738
    const v0, 0x10019

    .line 739
    const-string v3, "vipereffect.headphonefx.reverb.roomwidth"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 738
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 740
    const v0, 0x1001a

    .line 741
    const-string v3, "vipereffect.headphonefx.reverb.damp"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 740
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 742
    const v0, 0x1001b

    .line 743
    const-string v3, "vipereffect.headphonefx.reverb.wet"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 742
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 744
    const v0, 0x1001c

    .line 745
    const-string v3, "vipereffect.headphonefx.reverb.dry"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 744
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 746
    const-string v0, "vipereffect.headphonefx.reverb.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    const v0, 0x10017

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 752
    :goto_6
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Playback AGC."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const v0, 0x1001e

    .line 754
    const-string v3, "vipereffect.headphonefx.playbackgain.ratio"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 753
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 755
    const v0, 0x1001f

    .line 756
    const-string v3, "vipereffect.headphonefx.playbackgain.volume"

    const-string v4, "80"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 755
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 757
    const v0, 0x10020

    .line 758
    const-string v3, "vipereffect.headphonefx.playbackgain.maxscaler"

    const-string v4, "400"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 757
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 759
    const-string v0, "vipereffect.headphonefx.playbackgain.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 760
    const v0, 0x1001d

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 766
    :goto_7
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating FET Compressor."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const v0, 0x1004b

    .line 768
    const-string v3, "vipereffect.headphonefx.fetcompressor.threshold"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 767
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 769
    const v0, 0x1004c

    .line 770
    const-string v3, "vipereffect.headphonefx.fetcompressor.ratio"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 769
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 771
    const v0, 0x1004d

    .line 772
    const-string v3, "vipereffect.headphonefx.fetcompressor.knee"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 771
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 773
    const v0, 0x1004f

    .line 774
    const-string v3, "vipereffect.headphonefx.fetcompressor.gain"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 773
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 775
    const v0, 0x10051

    .line 776
    const-string v3, "vipereffect.headphonefx.fetcompressor.attack"

    const-string v4, "20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 775
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 777
    const v0, 0x10053

    .line 778
    const-string v3, "vipereffect.headphonefx.fetcompressor.release"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 777
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 779
    const v0, 0x10055

    .line 780
    const-string v3, "vipereffect.headphonefx.fetcompressor.kneemulti"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 779
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 781
    const v0, 0x10056

    .line 782
    const-string v3, "vipereffect.headphonefx.fetcompressor.maxattack"

    const-string v4, "80"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 781
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 783
    const v0, 0x10057

    .line 784
    const-string v3, "vipereffect.headphonefx.fetcompressor.maxrelease"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 783
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 785
    const v0, 0x10058

    .line 786
    const-string v3, "vipereffect.headphonefx.fetcompressor.crest"

    const-string v4, "20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 785
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 787
    const v0, 0x10059

    .line 788
    const-string v3, "vipereffect.headphonefx.fetcompressor.adapt"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 787
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 789
    const-string v0, "vipereffect.headphonefx.fetcompressor.noclipenable"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 790
    const v0, 0x1005a

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 794
    :goto_8
    const-string v0, "vipereffect.headphonefx.fetcompressor.autoknee"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 795
    const v0, 0x1004e

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 799
    :goto_9
    const-string v0, "vipereffect.headphonefx.fetcompressor.autogain"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 800
    const v0, 0x10050

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 804
    :goto_a
    const-string v0, "vipereffect.headphonefx.fetcompressor.autoattack"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 805
    const v0, 0x10052

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 809
    :goto_b
    const-string v0, "vipereffect.headphonefx.fetcompressor.autorelease"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 810
    const v0, 0x10054

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 814
    :goto_c
    const-string v0, "vipereffect.headphonefx.fetcompressor.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 815
    const v0, 0x1004a

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 821
    :goto_d
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Dynamic System."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v0, "vipereffect.headphonefx.dynamicsystem.coeffs"

    const-string v3, "100;5600;40;80;50;50"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 824
    array-length v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 825
    const v3, 0x10022

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 826
    aget-object v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 825
    invoke-virtual {p0, v3, v4, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 827
    const v3, 0x10023

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 828
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 827
    invoke-virtual {p0, v3, v4, v5}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 829
    const v3, 0x10024

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 830
    const/4 v5, 0x5

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 829
    invoke-virtual {p0, v3, v4, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 832
    :cond_1
    const-string v0, "vipereffect.headphonefx.dynamicsystem.bass"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x64

    .line 834
    const v3, 0x10025

    invoke-virtual {p0, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 835
    const-string v0, "vipereffect.headphonefx.dynamicsystem.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 836
    const v0, 0x10021

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 842
    :goto_e
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Fidelity Control."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const v0, 0x10027

    .line 844
    const-string v3, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 843
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 845
    const v0, 0x10028

    .line 846
    const-string v3, "vipereffect.headphonefx.fidelity.bass.freq"

    const-string v4, "40"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 845
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 847
    const v0, 0x10029

    .line 848
    const-string v3, "vipereffect.headphonefx.fidelity.bass.gain"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 847
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 849
    const-string v0, "vipereffect.headphonefx.fidelity.bass.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 850
    const v0, 0x10026

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 854
    :goto_f
    const v0, 0x1002b

    .line 855
    const-string v3, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 854
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 856
    const v0, 0x1002c

    .line 857
    const-string v3, "vipereffect.headphonefx.fidelity.clarity.gain"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 856
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 858
    const-string v0, "vipereffect.headphonefx.fidelity.clarity.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 859
    const v0, 0x1002a

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 865
    :goto_10
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Cure System."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const v0, 0x1002e

    .line 867
    const-string v3, "vipereffect.headphonefx.cure.crossfeed"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 866
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 868
    const-string v0, "vipereffect.headphonefx.cure.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 869
    const v0, 0x1002d

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 875
    :goto_11
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Tube Simulator."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v0, "vipereffect.headphonefx.tube.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 877
    const v0, 0x1002f

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 883
    :goto_12
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating AnalogX."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const v0, 0x10031

    .line 885
    const-string v3, "vipereffect.headphonefx.analogx.mode"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 884
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 886
    const-string v0, "vipereffect.headphonefx.analogx.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 887
    const v0, 0x10030

    invoke-virtual {p0, v0, v6}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 893
    :goto_13
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Shutting down speaker optimizer."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const v0, 0x10043

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 897
    const-string v0, "ViPEREffect"

    const-string v3, "updateSystem(): Updating Limiter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const v0, 0x10032

    .line 899
    const-string v3, "vipereffect.headphonefx.outvol"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 898
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 900
    const v0, 0x10033

    .line 901
    const-string v3, "vipereffect.headphonefx.channelpan"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 900
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 902
    const v0, 0x10034

    .line 903
    const-string v3, "vipereffect.headphonefx.limiter"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 902
    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 906
    const-string v0, "vipereffect.headphonefx.enable"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 907
    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPEREffectEnabled(Z)V

    .line 909
    const-string v0, "ViPEREffect"

    const-string v1, "System updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void

    .line 673
    :cond_2
    const v0, 0x1000c

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_0

    .line 682
    :cond_3
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setV4AEqualizerBandLevel(II)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto/16 :goto_1

    .line 687
    :cond_4
    const v0, 0x1000f

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_2

    .line 698
    :cond_5
    invoke-virtual {p0, v8, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_3

    .line 713
    :cond_6
    const v0, 0x10011

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_4

    .line 722
    :cond_7
    const v0, 0x10015

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_5

    .line 749
    :cond_8
    const v0, 0x10017

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_6

    .line 762
    :cond_9
    const v0, 0x1001d

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_7

    .line 792
    :cond_a
    const v0, 0x1005a

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_8

    .line 797
    :cond_b
    const v0, 0x1004e

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_9

    .line 802
    :cond_c
    const v0, 0x10050

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_a

    .line 807
    :cond_d
    const v0, 0x10052

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_b

    .line 812
    :cond_e
    const v0, 0x10054

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_c

    .line 817
    :cond_f
    const v0, 0x1004a

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_d

    .line 838
    :cond_10
    const v0, 0x10021

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_e

    .line 852
    :cond_11
    const v0, 0x10026

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_f

    .line 861
    :cond_12
    const v0, 0x1002a

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_10

    .line 871
    :cond_13
    const v0, 0x1002d

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_11

    .line 879
    :cond_14
    const v0, 0x1002f

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_12

    .line 889
    :cond_15
    const v0, 0x10030

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    goto/16 :goto_13
.end method
