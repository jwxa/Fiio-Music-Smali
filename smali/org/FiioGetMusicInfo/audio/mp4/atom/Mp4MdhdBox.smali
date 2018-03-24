.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MdhdBox.java"


# static fields
.field public static final CREATED_DATE_LONG_LENGTH:I = 0x8

.field public static final CREATED_DATE_LONG_POS:I = 0x4

.field public static final CREATED_DATE_SHORT_LENGTH:I = 0x4

.field public static final CREATED_DATE_SHORT_POS:I = 0x4

.field public static final DURATION_LONG_LENGTH:I = 0x8

.field public static final DURATION_LONG_POS:I = 0x18

.field public static final DURATION_SHORT_LENGTH:I = 0x4

.field public static final DURATION_SHORT_POS:I = 0x10

.field private static final LONG_FORMAT:I = 0x1

.field public static final MODIFIED_DATE_LONG_LENGTH:I = 0x8

.field public static final MODIFIED_DATE_LONG_POS:I = 0xc

.field public static final MODIFIED_DATE_SHORT_LENGTH:I = 0x4

.field public static final MODIFIED_DATE_SHORT_POS:I = 0x8

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final TIMESCALE_LENGTH:I = 0x4

.field public static final TIMESCALE_LONG_POS:I = 0x14

.field public static final TIMESCALE_SHORT_POS:I = 0xc

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private samplingRate:I

.field private timeLength:J


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 46
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 49
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    .line 52
    const/16 v0, 0x18

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->timeLength:J

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    .line 58
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->timeLength:J

    goto :goto_0
.end method


# virtual methods
.method public getSampleRate()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->samplingRate:I

    return v0
.end method

.method public getTimeLength()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->timeLength:J

    return-wide v0
.end method
