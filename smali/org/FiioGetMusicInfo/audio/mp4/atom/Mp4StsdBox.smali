.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4StsdBox.java"


# static fields
.field public static final NO_OF_DESCRIPTIONS_POS:I = 0x4

.field public static final NO_OF_DESCRIPTIONS_POS_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 33
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 34
    return-void
.end method


# virtual methods
.method public processData()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    return-void
.end method
