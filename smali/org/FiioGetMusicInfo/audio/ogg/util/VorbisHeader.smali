.class public interface abstract Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisHeader;
.super Ljava/lang/Object;
.source "VorbisHeader.java"


# static fields
.field public static final CAPTURE_PATTERN:Ljava/lang/String; = "vorbis"

.field public static final CAPTURE_PATTERN_AS_BYTES:[B

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final FIELD_CAPTURE_PATTERN_LENGTH:I = 0x6

.field public static final FIELD_CAPTURE_PATTERN_POS:I = 0x1

.field public static final FIELD_PACKET_TYPE_LENGTH:I = 0x1

.field public static final FIELD_PACKET_TYPE_POS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisHeader;->CAPTURE_PATTERN_AS_BYTES:[B

    .line 20
    return-void

    .line 11
    nop

    :array_0
    .array-data 1
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
    .end array-data
.end method
