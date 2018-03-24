.class public abstract Lb/a/a/a/a;
.super Ljava/lang/Object;
.source "AbstractCodepageDetector.java"

# interfaces
.implements Lb/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a;->a(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 91
    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
