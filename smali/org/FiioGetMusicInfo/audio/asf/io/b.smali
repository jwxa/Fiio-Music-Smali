.class final Lorg/FiioGetMusicInfo/audio/asf/io/b;
.super Ljava/lang/Object;
.source "ChunkHeaderReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private static final b:Lorg/FiioGetMusicInfo/audio/asf/io/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/b;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 46
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/io/b;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/asf/io/b;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/b;->b:Lorg/FiioGetMusicInfo/audio/asf/io/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a()Lorg/FiioGetMusicInfo/audio/asf/io/b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/b;->b:Lorg/FiioGetMusicInfo/audio/asf/io/b;

    return-object v0
.end method


# virtual methods
.method public final canFail()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/b;->a:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public final read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 7

    .prologue
    .line 83
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x18

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 85
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    invoke-direct {v1, p1, p3, p4, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v1
.end method
