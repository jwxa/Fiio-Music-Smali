.class final Lorg/eclipse/jetty/http/f;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

.field final synthetic b:Ljava/util/Enumeration;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/eclipse/jetty/http/HttpFields;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Lorg/eclipse/jetty/http/f;->d:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/util/Enumeration;

    iput-object p3, p0, Lorg/eclipse/jetty/http/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 582
    :goto_0
    return v0

    .line 575
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/f;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    .line 579
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 581
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    move v0, v2

    .line 582
    goto :goto_0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/f;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/f;->a:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
