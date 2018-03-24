.class final Lorg/FiioGetMusicInfo/tag/id3/d;
.super Lorg/FiioGetMusicInfo/tag/id3/a;
.source "ID3v23Frame.java"


# instance fields
.field final synthetic c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 688
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/a;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 689
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;B)V
    .locals 3

    .prologue
    .line 692
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    .line 693
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/a;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;B)V

    .line 694
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    iget-object v2, v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Unknown Encoding Flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    invoke-static {v2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    iget-object v2, v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is compressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    iget-object v2, v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is encrypted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/d;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    iget-object v2, v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is grouped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 695
    :cond_3
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 791
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encodingFlags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "compression"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit16 v2, v2, 0x80

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 793
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encryption"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v2, v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 794
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "groupidentity"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v2, v2, 0x20

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 795
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encodingFlags"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 714
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 715
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 729
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x10

    if-gtz v0, :cond_0

    .line 730
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x8

    if-gtz v0, :cond_0

    .line 731
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x4

    if-gtz v0, :cond_0

    .line 732
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x2

    if-gtz v0, :cond_0

    .line 733
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x1

    .line 729
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 739
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Unsetting Unknown Encoding Flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    invoke-static {v2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 742
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 743
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 744
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 745
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 746
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    .line 748
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 775
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 780
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 785
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/d;->a:B

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
