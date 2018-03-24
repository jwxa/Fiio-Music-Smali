.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MetaBox.java"


# static fields
.field public static final FLAGS_LENGTH:I = 0x4


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 25
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 26
    return-void
.end method

.method public static createiTunesStyleMetaBox(I)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 50
    add-int/lit8 v1, p0, 0xc

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 51
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 52
    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 53
    return-object v2
.end method


# virtual methods
.method public processData()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 32
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_META_ATOM_CHILD_DATA_NOT_NULL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method
