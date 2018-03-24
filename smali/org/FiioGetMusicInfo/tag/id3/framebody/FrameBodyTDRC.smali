.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTDRC.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static final PRECISION_DAY:I = 0x3

.field private static final PRECISION_HOUR:I = 0x2

.field private static final PRECISION_MINUTE:I = 0x1

.field private static final PRECISION_MONTH:I = 0x4

.field private static final PRECISION_SECOND:I = 0x0

.field private static final PRECISION_YEAR:I = 0x5

.field private static formatDateIn:Ljava/text/SimpleDateFormat;

.field private static formatDateOut:Ljava/text/SimpleDateFormat;

.field private static formatHoursOut:Ljava/text/SimpleDateFormat;

.field private static formatMonthOut:Ljava/text/SimpleDateFormat;

.field private static formatTimeIn:Ljava/text/SimpleDateFormat;

.field private static formatTimeOut:Ljava/text/SimpleDateFormat;

.field private static formatYearIn:Ljava/text/SimpleDateFormat;

.field private static formatYearOut:Ljava/text/SimpleDateFormat;

.field private static final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private hoursOnly:Z

.field private monthOnly:Z

.field private originalID:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMM"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmm"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-MM"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HH:mm"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HH"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 99
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 280
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 293
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    .line 294
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 251
    const-string v0, "TDAT"

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->isMonthOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    .line 254
    const-string v0, "TextEncoding"

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v0, "Text"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 238
    const-string v0, "TIME"

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->isHoursOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    .line 241
    const-string v0, "TextEncoding"

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v0, "Text"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRDA;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 264
    const-string v0, "TRDA"

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRDA;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 266
    const-string v0, "TextEncoding"

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v0, "Text"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTYER;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 52
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 226
    const-string v0, "TYER"

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTYER;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 228
    const-string v0, "TextEncoding"

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string v0, "Text"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private extractID3v23Formats(Ljava/util/Date;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 377
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precision is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 383
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 388
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 390
    iput-boolean v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    goto :goto_0

    .line 393
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 395
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 396
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 401
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 402
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 404
    iput-boolean v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    goto :goto_0

    .line 408
    :cond_4
    if-ne p2, v3, :cond_5

    .line 410
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 411
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 412
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_5
    if-nez p2, :cond_0

    .line 417
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const-class v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 143
    :goto_0
    monitor-exit v1

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 143
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    const-class v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    const-class v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    const-class v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public findMatchingMaskAndExtractV3Values()V
    .locals 6

    .prologue
    .line 299
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 326
    :goto_1
    return-void

    .line 304
    :cond_0
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 304
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    if-eqz v1, :cond_1

    .line 311
    :try_start_2
    invoke-direct {p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->extractID3v23Formats(Ljava/util/Date;I)V

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 299
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 323
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Date Formatter:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "failed to parse:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "with "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 178
    :cond_5
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    const-string v0, "TDRC"

    return-object v0
.end method

.method public getOriginalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isHoursOnly()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return v0
.end method

.method public isMonthOnly()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting date to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setHoursOnly(Z)V
    .locals 0

    .prologue
    .line 450
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 451
    return-void
.end method

.method public setMonthOnly(Z)V
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 441
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting time to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting year to"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 190
    return-void
.end method
