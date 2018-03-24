.class public Lorg/FiioGetMusicInfo/audio/AudioFileIO;
.super Ljava/lang/Object;
.source "AudioFileIO.java"


# static fields
.field private static defaultInstance:Lorg/FiioGetMusicInfo/audio/AudioFileIO;

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private final modificationHandler:Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;

.field private readers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "org.FiioGetMusicInfo.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    .line 234
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->modificationHandler:Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;

    .line 235
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->prepareReadersAndWriters()V

    .line 236
    return-void
.end method

.method public static getDefaultAudioFileIO()Lorg/FiioGetMusicInfo/audio/AudioFileIO;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->defaultInstance:Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->defaultInstance:Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    .line 133
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->defaultInstance:Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    return-object v0
.end method

.method private prepareReadersAndWriters()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->OGG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/ogg/OggFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->FLAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/flac/FlacFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP3:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp3/MP3FileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/mp3/MP3FileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP4:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4A:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4P:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4B:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WAV:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/wav/WavFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WMA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DSF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->APE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lorg/FiioGetMusicInfo/audio/real/RealFileReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/real/RealFileReader;-><init>()V

    .line 285
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RM:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public static read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public static readAs(Ljava/io/File;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readFileAs(Ljava/io/File;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public static readMagic(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->getDefaultAudioFileIO()Lorg/FiioGetMusicInfo/audio/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readFileMagic(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->modificationHandler:Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->addAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V

    .line 247
    return-void
.end method

.method public checkFileExists(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 394
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading file:path"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":abs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/io/FileNotFoundException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method public readFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 5

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    .line 309
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;

    .line 312
    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->setExt(Ljava/lang/String;)V

    .line 318
    return-object v0
.end method

.method public readFileAs(Ljava/io/File;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    .line 374
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;

    .line 375
    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/audio/AudioFile;->setExt(Ljava/lang/String;)V

    .line 382
    return-object v0
.end method

.method public readFileMagic(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 5

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->checkFileExists(Ljava/io/File;)V

    .line 339
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getMagicExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->readers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;

    .line 342
    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NO_READER_FOR_THIS_FORMAT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->setExt(Ljava/lang/String;)V

    .line 349
    return-object v0
.end method

.method public removeAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFileIO;->modificationHandler:Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/generic/ModificationHandler;->removeAudioFileModificationListener(Lorg/FiioGetMusicInfo/audio/generic/AudioFileModificationListener;)V

    .line 410
    return-void
.end method
