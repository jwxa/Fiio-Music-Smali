.class final Lorg/FiioGetMusicInfo/tag/id3/g;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "ID3v24Frame.java"


# instance fields
.field final synthetic a:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;


# direct methods
.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 813
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 814
    return-void
.end method

.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 821
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 823
    iput-byte p2, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    .line 824
    iput-byte p2, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    .line 825
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/g;->a()V

    .line 826
    return-void
.end method

.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;Lorg/FiioGetMusicInfo/tag/id3/e;)V
    .locals 3

    .prologue
    .line 834
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 833
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 835
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/e;->getOriginalFlags()B

    move-result v1

    const/4 v0, 0x0

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_0

    const/16 v0, 0x20

    :cond_0
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_1
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    .line 836
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    .line 837
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/g;->a()V

    .line 838
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->isDiscardIfFileAltered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    .line 869
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    .line 876
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    .line 874
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->writeFlags:B

    goto :goto_0
.end method


# virtual methods
.method public final createStructure()V
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "statusFlags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeTagAlterPreservation"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    and-int/lit8 v2, v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 882
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeFileAlterPreservation"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    and-int/lit8 v2, v2, 0x20

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 883
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeReadOnly"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/g;->originalFlags:B

    and-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 884
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "statusFlags"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 885
    return-void
.end method
