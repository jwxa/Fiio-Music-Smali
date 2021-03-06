.class public Lorg/mozilla/intl/chardet/nsDetector;
.super Lorg/mozilla/intl/chardet/nsPSMDetector;
.source "nsDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetector;


# instance fields
.field mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>(I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 38
    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsDetector;->HandleData([BI)Z

    .line 53
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mDone:Z

    goto :goto_0
.end method

.method public Done()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 58
    return-void
.end method

.method public Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 43
    return-void
.end method

.method public Report(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    invoke-interface {v0, p1}, Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public isAscii([BI)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    .line 73
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 69
    :cond_1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
