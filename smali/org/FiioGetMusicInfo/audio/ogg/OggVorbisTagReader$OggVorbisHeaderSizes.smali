.class public Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;
.super Ljava/lang/Object;
.source "OggVorbisTagReader.java"


# instance fields
.field private commentHeaderSize:I

.field private commentHeaderStartPosition:J

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private setupHeaderSize:I

.field private setupHeaderStartPosition:J


# direct methods
.method constructor <init>(JJIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p7, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    .line 619
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    .line 620
    iput-wide p3, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    .line 621
    iput p5, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    .line 622
    iput p6, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    .line 623
    return-void
.end method


# virtual methods
.method public getCommentHeaderSize()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderSize:I

    return v0
.end method

.method public getCommentHeaderStartPosition()J
    .locals 2

    .prologue
    .line 662
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->commentHeaderStartPosition:J

    return-wide v0
.end method

.method public getExtraPacketDataSize()I
    .locals 3

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    return v1

    .line 650
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 652
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getExtraPacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->packetList:Ljava/util/List;

    return-object v0
.end method

.method public getSetupHeaderSize()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderSize:I

    return v0
.end method

.method public getSetupHeaderStartPosition()J
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->setupHeaderStartPosition:J

    return-wide v0
.end method
