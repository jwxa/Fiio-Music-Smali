.class public Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;
.super Ljava/lang/Object;
.source "AiffUtil.java"


# static fields
.field private static final dateFmt:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->dateFmt:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffUtil;->dateFmt:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static read80BitDouble(Ljava/nio/ByteBuffer;)D
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    new-instance v1, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;-><init>([B)V

    .line 23
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/ExtDouble;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static timestampToDate(J)Ljava/util/Date;
    .locals 10

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v2, 0x0

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    const/16 v1, 0x770

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 42
    div-long v2, p0, v8

    long-to-int v1, v2

    .line 43
    int-to-long v2, v1

    mul-long/2addr v2, v8

    sub-long v2, p0, v2

    long-to-int v2, v2

    .line 44
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 45
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 47
    return-object v0
.end method
