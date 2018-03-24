.class final Lorg/FiioGetMusicInfo/tag/id3/f;
.super Lorg/FiioGetMusicInfo/tag/id3/a;
.source "ID3v24Frame.java"


# instance fields
.field final synthetic c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;


# direct methods
.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 931
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/a;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 932
    return-void
.end method

.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;B)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    .line 941
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/a;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;B)V

    .line 942
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v2, v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Unknown Encoding Flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    invoke-static {v2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_FRAME_IS_COMPRESSED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_FRAME_IS_ENCRYPTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_FRAME_IS_GROUPED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_FRAME_IS_UNSYNCHRONISED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_FRAME_IS_DATA_LENGTH_INDICATOR:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    iget-object v3, v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->identifier:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 943
    :cond_5
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 1059
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit16 v0, v0, 0x80

    if-gtz v0, :cond_0

    .line 1060
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x20

    if-gtz v0, :cond_0

    .line 1061
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x10

    .line 1059
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 979
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 1077
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encodingFlags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "compression"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1079
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encryption"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1080
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "groupidentity"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v2, v2, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1081
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frameUnsynchronisation"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1082
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "dataLengthIndicator"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1083
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "encodingFlags"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 984
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 989
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 994
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 999
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x2

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
    .line 1004
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1024
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1025
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1034
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1035
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1049
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1050
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1054
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1055
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 1066
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->c:Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Unsetting Unknown Encoding Flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    invoke-static {v2}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1069
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1070
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1071
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/f;->a:B

    .line 1073
    :cond_0
    return-void
.end method
