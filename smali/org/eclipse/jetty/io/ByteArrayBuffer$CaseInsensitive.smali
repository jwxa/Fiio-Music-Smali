.class public Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 414
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 419
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
