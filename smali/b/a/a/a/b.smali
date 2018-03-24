.class public final Lb/a/a/a/b;
.super Lb/a/a/a/a;
.source "CodepageDetectorProxy.java"


# static fields
.field private static a:Lb/a/a/a/b;


# instance fields
.field private b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lb/a/a/a/a;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/a/b;->b:Ljava/util/Set;

    .line 90
    return-void
.end method

.method public static a()Lb/a/a/a/b;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lb/a/a/a/b;

    invoke-direct {v0}, Lb/a/a/a/b;-><init>()V

    sput-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    .line 105
    :cond_0
    sget-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The given input stream ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 185
    const-string v2, ") has to support marking."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lb/a/a/a/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 213
    :cond_2
    return-object v0

    .line 191
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/c;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/c;->a(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lb/a/a/a/e;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 204
    instance-of v2, v0, Lb/a/a/a/f;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 199
    const-string v1, "More than the given length had to be read and the given stream could not be reset. Undetermined state for this detection."

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lb/a/a/a/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    :cond_1
    return-object v0

    .line 132
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/c;

    invoke-interface {v0, p1}, Lb/a/a/a/c;->a(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lb/a/a/a/e;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 135
    instance-of v2, v0, Lb/a/a/a/f;

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public final a(Lb/a/a/a/c;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lb/a/a/a/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    iget-object v0, p0, Lb/a/a/a/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    const/4 v0, 0x1

    .line 223
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 225
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
