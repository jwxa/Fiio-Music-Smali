.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4EsdsBox.java"


# static fields
.field public static final AUDIO_PROFILE_ID_LENGTH:I = 0x1

.field public static final AVERAGE_BITRATE_LENGTH:I = 0x4

.field public static final BUFFER_SIZE_LENGTH:I = 0x3

.field public static final CHANNEL_FLAGS_LENGTH:I = 0x1

.field public static final CONFIG_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_OBJECT_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_TYPE_LENGTH:I = 0x1

.field public static final ES_ID_LENGTH:I = 0x2

.field private static final FILLER_END:I = 0xfe

.field private static final FILLER_OTHER:I = 0x81

.field private static final FILLER_START:I = 0x80

.field public static final MAX_BITRATE_LENGTH:I = 0x4

.field public static final OBJECT_TYPE_ID:I = 0x1

.field public static final OBJECT_TYPE_LENGTH:I = 0x1

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_LENGTH_1:I = 0x1

.field private static final SECTION_FIVE:I = 0x5

.field private static final SECTION_FOUR:I = 0x4

.field private static final SECTION_THREE:I = 0x3

.field public static final STREAM_PRIORITY:I = 0x1

.field public static final STREAM_PRIORITY_LENGTH:I = 0x1

.field public static final STREAM_TYPE_LENGTH:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static audioProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static kindMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LC_HE:Z

.field private audioProfile:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field private avgBitrate:I

.field private kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private maxBitrate:I

.field private numberOfChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    .line 60
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;->values()[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    .line 66
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->values()[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_1

    .line 70
    return-void

    .line 60
    :cond_0
    aget-object v4, v2, v1

    .line 62
    sget-object v5, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    aget-object v3, v1, v0

    .line 68
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 78
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->LC_HE:Z

    .line 80
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 81
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 105
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 111
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    .line 115
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    .line 119
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 122
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 127
    if-ne v0, v2, :cond_2

    .line 128
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->LC_HE:Z

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method public getAudioProfile()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method

.method public getAvgBitrate()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    return v0
.end method

.method public getKind()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    return v0
.end method

.method public getNumberOfChannels()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    return v0
.end method

.method public isHE()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->LC_HE:Z

    return v0
.end method

.method public processSectionHeader(Ljava/nio/ByteBuffer;)I
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 178
    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x81

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(B)I

    move-result v0

    goto :goto_0
.end method
