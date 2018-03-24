.class public abstract Lorg/mozilla/intl/chardet/nsPSMDetector;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

.field mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 69
    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 71
    return-void
.end method

.method public constructor <init>(I[Lorg/mozilla/intl/chardet/nsVerifier;[Lorg/mozilla/intl/chardet/nsEUCStatistics;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 74
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 75
    iput-object p3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 76
    iput-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 78
    iput p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    .line 79
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 80
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DataEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 265
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 267
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 275
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 271
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1
.end method

.method public HandleData([BI)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 188
    move v4, v1

    :goto_0
    if-lt v4, p2, :cond_1

    .line 253
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BI)V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    :goto_1
    return v0

    .line 189
    :cond_1
    aget-byte v3, p1, v4

    move v0, v1

    .line 191
    :cond_2
    :goto_2
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v0, v2, :cond_4

    .line 223
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gt v0, v7, :cond_7

    .line 225
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ne v7, v0, :cond_3

    .line 226
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 228
    :cond_3
    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 229
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1

    .line 192
    :cond_4
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v5, v5, v0

    aget-object v2, v2, v5

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aget-byte v5, v5, v0

    invoke-static {v2, v3, v5}, Lorg/mozilla/intl/chardet/nsVerifier;->getNextState(Lorg/mozilla/intl/chardet/nsVerifier;BB)B

    move-result v5

    .line 197
    const/4 v2, 0x2

    if-ne v5, v2, :cond_5

    .line 201
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 202
    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 203
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1

    .line 206
    :cond_5
    if-ne v5, v7, :cond_6

    .line 209
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    .line 210
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_2

    .line 211
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget v5, v5, v6

    aput v5, v2, v0

    .line 212
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    goto :goto_2

    .line 218
    :cond_6
    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v6, v0

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    move v2, v1

    move v3, v1

    .line 237
    :goto_3
    iget v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v3, v5, :cond_8

    .line 244
    if-ne v7, v2, :cond_a

    .line 245
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 246
    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 247
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_1

    .line 238
    :cond_8
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_9

    .line 239
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    .line 237
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 188
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0
.end method

.method public abstract Report(Ljava/lang/String;)V
.end method

.method public Reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 84
    iput-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 85
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    move v0, v1

    .line 87
    :goto_0
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    .line 93
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aput-byte v1, v2, v0

    .line 89
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Sample([BI)V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    .line 281
    return-void
.end method

.method public Sample([BIZ)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 284
    move v0, v1

    move v2, v1

    move v3, v1

    .line 288
    :goto_0
    iget v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v2, v5, :cond_3

    .line 295
    if-le v0, v4, :cond_6

    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 297
    iget-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2, p1, p2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Sample([BI)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    .line 299
    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetSomeData()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->EnoughData()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-ne v0, v3, :cond_2

    .line 300
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->CalFreq()V

    .line 302
    const/4 v5, -0x1

    .line 304
    const/4 v0, 0x0

    move v6, v1

    move v3, v1

    .line 305
    :goto_2
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v6, v1, :cond_7

    .line 317
    if-ltz v5, :cond_2

    .line 318
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 319
    iput-boolean v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 323
    :cond_2
    return-void

    .line 289
    :cond_3
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 291
    :cond_4
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GB18030"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 292
    add-int/lit8 v3, v3, 0x1

    .line 288
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    .line 295
    goto :goto_1

    .line 306
    :cond_7
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v2, v2, v6

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v2, v2, v6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Big5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 307
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v7, v7, v6

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v2

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v6

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v7

    .line 308
    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v10, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v9

    .line 307
    invoke-virtual {v1, v2, v7, v8, v9}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v1

    .line 311
    add-int/lit8 v2, v3, 0x1

    if-eqz v3, :cond_8

    cmpl-float v3, v0, v1

    if-lez v3, :cond_a

    :cond_8
    move v0, v1

    move v1, v2

    move v2, v6

    .line 305
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v3, v1

    move v5, v2

    goto/16 :goto_2

    :cond_9
    move v1, v3

    move v2, v5

    goto :goto_3

    :cond_a
    move v1, v2

    move v2, v5

    goto :goto_3
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gtz v1, :cond_0

    .line 328
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 329
    const-string v2, "nomatch"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 336
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    new-array v1, v1, [Ljava/lang/String;

    .line 334
    :goto_1
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 336
    goto :goto_0

    .line 335
    :cond_1
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initVerifiers(I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 97
    if-ltz p1, :cond_0

    if-lt p1, v6, :cond_1

    :cond_0
    move p1, v0

    .line 107
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 110
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 112
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 113
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 114
    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 117
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 118
    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v3, v2, v5

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 176
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 177
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    .line 179
    return-void

    .line 123
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 125
    new-array v2, v6, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 126
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 127
    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto :goto_0

    .line 132
    :cond_5
    if-ne p1, v5, :cond_6

    .line 134
    const/16 v2, 0x8

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 135
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 136
    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_0

    .line 141
    :cond_6
    if-ne p1, v1, :cond_7

    .line 143
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 144
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 145
    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_0

    .line 149
    :cond_7
    if-ne p1, v7, :cond_8

    .line 151
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 152
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 153
    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 156
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 157
    new-instance v3, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_0

    .line 162
    :cond_8
    if-nez p1, :cond_2

    .line 164
    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 165
    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 166
    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 167
    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 170
    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 171
    new-instance v3, Lorg/mozilla/intl/chardet/EUCJPStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCJPStatistics;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/EUCKRStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCKRStatistics;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 172
    new-instance v4, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_0
.end method
