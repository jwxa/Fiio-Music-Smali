.class final Lorg/FiioGetMusicInfo/tag/id3/e;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "ID3v23Frame.java"


# instance fields
.field final synthetic a:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 599
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 598
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 600
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    .line 601
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 602
    return-void
.end method

.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 604
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 606
    iput-byte p2, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    .line 607
    iput-byte p2, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 608
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/e;->a()V

    .line 609
    return-void
.end method

.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;Lorg/FiioGetMusicInfo/tag/id3/g;)V
    .locals 3

    .prologue
    .line 617
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 616
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 618
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/g;->getOriginalFlags()B

    move-result v1

    const/4 v0, 0x0

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/16 v0, 0x40

    :cond_0
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    :cond_1
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    .line 619
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 620
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/e;->a()V

    .line 621
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->a:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->isDiscardIfFileAltered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 643
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    .line 648
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->writeFlags:B

    goto :goto_0
.end method


# virtual methods
.method public final createStructure()V
    .locals 3

    .prologue
    .line 654
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "statusFlags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeTagAlterPreservation"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    and-int/lit16 v2, v2, 0x80

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 656
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeFileAlterPreservation"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    and-int/lit8 v2, v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 657
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "typeReadOnly"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/e;->originalFlags:B

    and-int/lit8 v2, v2, 0x20

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 658
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "statusFlags"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 659
    return-void
.end method
