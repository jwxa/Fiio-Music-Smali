.class public Lcom/audlabs/vipereffect/ViPEREffect;
.super Ljava/lang/Object;
.source "ViPEREffect.java"


# static fields
.field private static backPcms:[B

.field private static final configObj:Ljava/lang/Object;

.field private static configs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final forObj:Ljava/lang/Object;

.field private static forSemp:Ljava/util/concurrent/Semaphore;

.field private static formatresult:Ljava/lang/String;

.field private static formats:[B

.field private static isRun:Z

.field private static pcmLegth:I

.field private static pcmSemp:Ljava/util/concurrent/Semaphore;

.field private static pcmSendLegth:I

.field private static pcms:[B

.field private static final pcmsObj:Ljava/lang/Object;

.field private static queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forObj:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmsObj:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configs:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->queue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmSemp:Ljava/util/concurrent/Semaphore;

    .line 64
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forSemp:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/audlabs/vipereffect/ViPEREffect;->isRun:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10()[B
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->backPcms:[B

    return-object v0
.end method

.method static synthetic access$11()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmSemp:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$13()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmsObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmLegth:I

    return v0
.end method

.method static synthetic access$15(I)V
    .locals 0

    .prologue
    .line 54
    sput p0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmSendLegth:I

    return-void
.end method

.method static synthetic access$16()[B
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcms:[B

    return-object v0
.end method

.method static synthetic access$17(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmLegth:I

    return-void
.end method

.method static synthetic access$2()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/audlabs/vipereffect/ViPEREffect;->formatresult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forSemp:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6()[B
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->formats:[B

    return-object v0
.end method

.method static synthetic access$7([B)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/audlabs/vipereffect/ViPEREffect;->formats:[B

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmSendLegth:I

    return v0
.end method

.method static synthetic access$9([B)V
    .locals 0

    .prologue
    .line 48
    sput-object p0, Lcom/audlabs/vipereffect/ViPEREffect;->backPcms:[B

    return-void
.end method

.method public static bytesToInt([BI)I
    .locals 2

    .prologue
    .line 409
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 410
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 409
    or-int/2addr v0, v1

    .line 411
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 409
    or-int/2addr v0, v1

    .line 412
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 409
    or-int/2addr v0, v1

    .line 413
    return v0
.end method

.method private static varargs concatArrays([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 417
    .line 418
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 421
    new-array v3, v2, [B

    .line 423
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v4, :cond_1

    .line 427
    return-object v3

    .line 418
    :cond_0
    aget-object v4, p0, v0

    .line 419
    array-length v4, v4

    add-int/2addr v2, v4

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    aget-object v5, p0, v0

    .line 424
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    array-length v5, v5

    add-int/2addr v2, v5

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getEffectEnable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    .line 343
    const-string v0, "com.audlabs.vipereffect.headset"

    .line 342
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    const-string v1, "vipereffect.headphonefx.enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static intToByteArray(I)[B
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 402
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 404
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static setEffectEnable(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 335
    .line 336
    const-string v0, "com.audlabs.vipereffect.headset"

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    invoke-static {p1}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPEREffectEnabled(Z)V

    .line 339
    return-void
.end method

.method public static setViPEREffect([B[B)V
    .locals 5

    .prologue
    .line 376
    sget-object v1, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    monitor-enter v1
    
    const-string v2, "jwxa"
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_0
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configs:Ljava/util/Vector;

    const/4 v2, 0x4

    new-array v2, v2, [[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p1

    invoke-static {v4}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/audlabs/vipereffect/ViPEREffect;->concatArrays([[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setViPEREffectEnabled(Z)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 390
    sget-object v2, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    monitor-enter v2

    .line 391
    :try_start_0
    sget-object v3, Lcom/audlabs/vipereffect/ViPEREffect;->configs:Ljava/util/Vector;

    const/4 v4, 0x2

    new-array v4, v4, [[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/audlabs/vipereffect/ViPEREffect;->concatArrays([[B)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->configObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move v0, v1

    .line 391
    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static setViPERFormat(III)Z
    .locals 4

    .prologue
    .line 363
    sget-object v1, Lcom/audlabs/vipereffect/ViPEREffect;->forObj:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [[B

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->concatArrays([[B)[B

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->formats:[B

    .line 365
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->forSemp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :goto_0
    const-string v0, "0\n"

    sget-object v1, Lcom/audlabs/vipereffect/ViPEREffect;->formatresult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 370
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setViPERPDel()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    sput-boolean v0, Lcom/audlabs/vipereffect/ViPEREffect;->isRun:Z

    .line 398
    return-void
.end method

.method public static setViPERPInit(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/payment/PayMent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/audlabs/vipereffect/payment/PayMent;->init(Landroid/content/Context;Z)V

    .line 72
    invoke-static {}, Lcom/audlabs/viperfx/base/V4AJniInterface;->CheckLibrary()Z

    move-result v0

    .line 73
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jni library status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p0}, Lcom/audlabs/vipereffect/base/ViPER4Android;->checkDDCDBVer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/audlabs/vipereffect/data/DDCDatabase;->initializeDatabase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/audlabs/vipereffect/base/ViPER4Android;->setDDCDBVer(Landroid/content/Context;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->initEnvironment(Landroid/content/Context;)V

    .line 82
    sget-boolean v0, Lcom/audlabs/vipereffect/ViPEREffect;->isRun:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->updateSystem_Module()V

    .line 331
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/audlabs/vipereffect/ViPEREffect;->isRun:Z

    .line 90
    new-instance v0, Lcom/audlabs/vipereffect/b;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/b;-><init>()V

    .line 147
    invoke-virtual {v0}, Lcom/audlabs/vipereffect/b;->start()V

    .line 149
    new-instance v0, Lcom/audlabs/vipereffect/c;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/c;-><init>()V

    .line 231
    invoke-virtual {v0}, Lcom/audlabs/vipereffect/c;->start()V

    .line 233
    new-instance v0, Lcom/audlabs/vipereffect/e;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/e;-><init>()V

    .line 326
    invoke-virtual {v0}, Lcom/audlabs/vipereffect/e;->start()V

    .line 328
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->init(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->updateSystem_Module()V

    goto :goto_0
.end method

.method public static setViPERProcess([BI)[B
    .locals 2

    .prologue
    .line 348
    sget-object v1, Lcom/audlabs/vipereffect/ViPEREffect;->pcmsObj:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    sput-object p0, Lcom/audlabs/vipereffect/ViPEREffect;->pcms:[B

    .line 350
    sput p1, Lcom/audlabs/vipereffect/ViPEREffect;->pcmLegth:I

    .line 351
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmsObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->pcmSemp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :goto_0
    sget-object v0, Lcom/audlabs/vipereffect/ViPEREffect;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 357
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setViPERReset()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "abcd"

    const-string v1, "setViPERReset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const v0, 0x9003

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/audlabs/vipereffect/ViPEREffect;->intToByteArray(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPEREffect([B[B)V

    .line 387
    return-void
.end method
