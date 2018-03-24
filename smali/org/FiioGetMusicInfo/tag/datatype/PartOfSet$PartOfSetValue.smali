.class public Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;
.super Ljava/lang/Object;
.source "PartOfSet.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final trackNoPattern:Ljava/util/regex/Pattern;

.field private static final trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;


# instance fields
.field private count:Ljava/lang/Integer;

.field private extra:Ljava/lang/String;

.field private rawCount:Ljava/lang/String;

.field private rawText:Ljava/lang/String;

.field private rawTotal:Ljava/lang/String;

.field private total:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 198
    const-string v0, "([0-9]+)/([0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    .line 199
    const-string v0, "([0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    .line 202
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 237
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 223
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private initFromValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 257
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 258
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 273
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x9

    const/16 v1, 0xa

    .line 392
    if-eqz p2, :cond_0

    .line 394
    sget-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    if-ne p3, v0, :cond_2

    .line 396
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 398
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 405
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    if-ne p3, v0, :cond_5

    .line 407
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 409
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 413
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 417
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 420
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    if-ne p3, v0, :cond_0

    .line 422
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 424
    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 426
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 428
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 430
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_8

    .line 432
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 436
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private resetValueFromCounts()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :goto_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 297
    return-void

    .line 286
    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 497
    if-ne p1, p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    if-nez v2, :cond_2

    move v0, v1

    .line 504
    goto :goto_0

    .line 507
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    .line 509
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 510
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 509
    goto :goto_0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountAsText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 380
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalAsText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 450
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 459
    :goto_0
    return-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 311
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 312
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    .line 314
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 329
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 360
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    .line 322
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 343
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 491
    :goto_0
    return-object v0

    .line 473
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 475
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V

    .line 481
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 483
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V

    .line 486
    :cond_2
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_4
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 479
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getPadNumberTotalLength()Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lorg/FiioGetMusicInfo/tag/options/PadNumberOption;)V

    goto :goto_1
.end method
