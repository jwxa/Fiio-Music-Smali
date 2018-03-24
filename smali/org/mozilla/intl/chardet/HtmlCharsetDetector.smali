.class public Lorg/mozilla/intl/chardet/HtmlCharsetDetector;
.super Ljava/lang/Object;
.source "HtmlCharsetDetector.java"


# static fields
.field public static found:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    array-length v0, p0

    if-eq v0, v2, :cond_1

    array-length v0, p0

    if-eq v0, v3, :cond_1

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 43
    const-string v1, "Usage: HtmlCharsetDetector <url> [<languageHint>]"

    .line 42
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where <url> is http://..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "For optional <languageHint>. Use following..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t1 => Japanese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t2 => Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t3 => Simplified Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t4 => Traditional Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t5 => Korean"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t6 => Dont know (default)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void

    .line 60
    :cond_1
    array-length v0, p0

    if-ne v0, v3, :cond_4

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    :goto_0
    new-instance v4, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v4, v0}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    .line 67
    new-instance v0, Lorg/mozilla/intl/chardet/a;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/a;-><init>()V

    invoke-virtual {v4, v0}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 74
    new-instance v0, Ljava/net/URL;

    aget-object v3, p0, v1

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    const/16 v0, 0x400

    new-array v6, v0, [B

    move v0, v2

    move v3, v1

    .line 82
    :cond_2
    :goto_1
    array-length v7, v6

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 92
    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 94
    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "CHARSET = ASCII"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sput-boolean v2, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    .line 99
    :cond_3
    sget-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 102
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Probable Charset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 61
    goto :goto_0

    .line 85
    :cond_5
    if-eqz v0, :cond_6

    .line 86
    invoke-virtual {v4, v6, v7}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v0

    .line 89
    :cond_6
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 90
    invoke-virtual {v4, v6, v7, v1}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v3

    goto :goto_1
.end method
