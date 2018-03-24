.class public final Lb/a/a/a/f;
.super Ljava/nio/charset/Charset;
.source "UnsupportedCharset.java"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/a/f;->a:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lb/a/a/a/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 84
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lb/a/a/a/f;

    invoke-direct {v0, p0}, Lb/a/a/a/f;-><init>(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lb/a/a/a/f;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Ljava/nio/charset/Charset;->displayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 107
    const-string v1, "This is no real Charset but a flag you should test for!"

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 117
    const-string v1, "This is no real Charset but a flag you should test for!"

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
