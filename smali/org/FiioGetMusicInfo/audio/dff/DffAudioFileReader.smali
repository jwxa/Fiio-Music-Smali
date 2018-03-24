.class public Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "DffAudioFileReader.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tag2Number:[I = null

.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tagNumber:[I = null

.field public static final CHUNKSIZE_LENGTH:I = 0x8

.field private static final DSD_SIGNATURE:Ljava/lang/String; = "DSD "

.field public static final FILESIZE_LENGTH:I = 0x8

.field public static final FMT_CHUNK_MIN_DATA_SIZE_:I = 0x28

.field private static final FMT_SIGNATURE:Ljava/lang/String; = "FRM8"

.field public static final METADATA_OFFSET_LENGTH:I = 0x8

.field public static final SIGNATURE_LENGTH:I = 0x4

.field public static final TagBufferLength:I = 0x4

.field public static TagSeek:I = 0x0

.field public static final TagVerLength:I = 0x14

.field public static final wzHeadLength:I = 0x84


# instance fields
.field BeginOfId3:J

.field FileLengthInTag:J


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tag2Number()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tag2Number:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/dff/a;->values()[Lorg/FiioGetMusicInfo/audio/dff/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->b:Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->c:Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->a:Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->d:Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->e:Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tag2Number:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tagNumber()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tagNumber:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/dff/b;->values()[Lorg/FiioGetMusicInfo/audio/dff/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->e:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->d:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->c:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->a:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->f:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->b:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->g:Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tagNumber:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->TagSeek:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->BeginOfId3:J

    .line 86
    return-void
.end method

.method private readTag(Ljava/io/RandomAccessFile;J)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 325
    sget v0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->TagSeek:I

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 328
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 331
    :try_start_0
    sget-object v2, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start creating ID3v2 Tag for version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 332
    packed-switch v0, :pswitch_data_0

    .line 344
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown major ID3v2 version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Returning an empty ID3v2 Tag."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>()V

    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Could not create ID3v2 Tag"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_1
    :try_start_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkDateToEven(J)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x1

    .line 356
    and-long v0, p1, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 358
    add-long/2addr p1, v4

    .line 360
    :cond_0
    return-wide p1
.end method

.method public chgStrToNumber(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/b;
    .locals 1

    .prologue
    .line 58
    const-string v0, "FVER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->a:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v0, "PROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->b:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "DSD "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->c:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "DIIN "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->d:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "COMT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->e:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "ID3 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->f:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->g:Lorg/FiioGetMusicInfo/audio/dff/b;

    goto :goto_0
.end method

.method public chgStrToNumber2(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/a;
    .locals 1

    .prologue
    .line 70
    const-string v0, "FS  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->a:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v0, "CHNL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->b:Lorg/FiioGetMusicInfo/audio/dff/a;

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "CMPR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->c:Lorg/FiioGetMusicInfo/audio/dff/a;

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "LSCO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->d:Lorg/FiioGetMusicInfo/audio/dff/a;

    goto :goto_0

    .line 76
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->e:Lorg/FiioGetMusicInfo/audio/dff/a;

    goto :goto_0
.end method

.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 106
    const/4 v3, 0x4

    :try_start_0
    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 107
    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 109
    const/16 v5, 0x8

    invoke-static {p1, v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 110
    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v5, v6, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->FileLengthInTag:J

    .line 112
    const/4 v5, 0x4

    invoke-static {p1, v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 113
    invoke-static {v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 116
    const-string v6, "FRM8"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DSD "

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    :cond_0
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v2, "Not a valid dsf file. Content does not start with \'DSD \'."

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :catch_0
    move-exception v1

    .line 282
    :cond_1
    return-object v0

    .line 123
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 128
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0xc

    sub-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 130
    const/4 v3, 0x4

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p0, v3}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->chgStrToNumber(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/b;

    move-result-object v3

    .line 135
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tagNumber()[I

    move-result-object v5

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/dff/b;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 266
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 267
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    int-to-long v6, v3

    .line 268
    invoke-virtual {p0, v6, v7}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v6

    .line 269
    long-to-int v3, v6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_0

    .line 138
    :pswitch_0
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_0

    .line 145
    :pswitch_1
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 146
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v6

    .line 147
    invoke-virtual {p0, v6, v7}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v6

    .line 149
    long-to-int v3, v6

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move v3, v4

    .line 151
    :goto_1
    int-to-long v8, v3

    cmp-long v8, v8, v6

    if-gez v8, :cond_3

    int-to-long v8, v3

    sub-long v8, v6, v8

    const-wide/16 v10, 0x4

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 206
    :cond_3
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v5

    mul-int/2addr v3, v5

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p0, v5, v3}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->getIdName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .line 155
    add-int/lit8 v3, v3, 0x4

    .line 156
    invoke-virtual {p0, v8}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->chgStrToNumber2(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/a;

    move-result-object v8

    .line 158
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$dff$DffAudioFileReader$tag2Number()[I

    move-result-object v9

    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/dff/a;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 164
    :pswitch_2
    add-int/lit8 v8, v3, 0x7

    invoke-static {v5, v3, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 165
    add-int/lit8 v3, v3, 0x8

    .line 166
    add-int/lit8 v8, v3, 0x3

    invoke-static {v5, v3, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v8

    .line 167
    invoke-virtual {v0, v8}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 168
    add-int/lit8 v3, v3, 0x4

    .line 169
    goto :goto_1

    .line 177
    :pswitch_3
    add-int/lit8 v8, v3, 0x7

    invoke-static {v5, v3, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v8

    int-to-long v8, v8

    .line 178
    invoke-virtual {p0, v8, v9}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v8

    .line 179
    add-int/lit8 v3, v3, 0x8

    .line 181
    add-int/lit8 v10, v3, 0x1

    invoke-static {v5, v3, v10}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v10

    .line 182
    add-int/lit8 v3, v3, 0x2

    .line 183
    invoke-virtual {v0, v10}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 184
    long-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v3, v8

    .line 185
    goto :goto_1

    .line 190
    :pswitch_4
    add-int/lit8 v8, v3, 0x7

    invoke-static {v5, v3, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v8

    int-to-long v8, v8

    .line 191
    invoke-virtual {p0, v8, v9}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v8

    .line 192
    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v3, v8

    .line 193
    goto :goto_1

    .line 198
    :pswitch_5
    add-int/lit8 v8, v3, 0x7

    invoke-static {v5, v3, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v8

    int-to-long v8, v8

    .line 199
    invoke-virtual {p0, v8, v9}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v8

    .line 200
    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v3, v8

    goto/16 :goto_1

    .line 212
    :pswitch_6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    long-to-int v1, v6

    sput v1, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->TagSeek:I

    .line 218
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 219
    const/4 v3, 0x0

    const/4 v5, 0x7

    invoke-static {v1, v3, v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    int-to-long v6, v1

    .line 220
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 222
    add-long v10, v8, v6

    .line 223
    invoke-virtual {v0, v6, v7}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    .line 224
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 225
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 226
    long-to-float v1, v6

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v8, v1

    invoke-virtual {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 230
    const-string v1, "Dsd file"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 231
    long-to-int v1, v6

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 232
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->println(J)V

    move v1, v2

    .line 234
    goto/16 :goto_0

    .line 238
    :pswitch_7
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 239
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    int-to-long v6, v3

    .line 240
    invoke-virtual {p0, v6, v7}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v6

    .line 241
    long-to-int v3, v6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto/16 :goto_0

    .line 247
    :pswitch_8
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 248
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    int-to-long v6, v3

    .line 249
    invoke-virtual {p0, v6, v7}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v6

    .line 250
    long-to-int v3, v6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto/16 :goto_0

    .line 256
    :pswitch_9
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 257
    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    int-to-long v6, v3

    .line 258
    invoke-virtual {p0, v6, v7}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->checkDateToEven(J)J

    move-result-wide v6

    .line 259
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->BeginOfId3:J

    .line 260
    long-to-int v3, v6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getIdName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 90
    new-array v2, v4, [B

    move v0, v1

    .line 92
    :goto_0
    if-lt v0, v4, :cond_0

    .line 97
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 94
    :cond_0
    add-int v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 4

    .prologue
    .line 300
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->BeginOfId3:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->BeginOfId3:J

    invoke-direct {p0, p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/dff/DffAudioFileReader;->readTag(Ljava/io/RandomAccessFile;J)Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    goto :goto_0
.end method
