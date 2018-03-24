.class final Lorg/eclipse/jetty/http/d;
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
.field a:Lorg/eclipse/jetty/http/HttpFields$Field;

.field final synthetic b:Lorg/eclipse/jetty/http/HttpFields$Field;

.field final synthetic c:Lorg/eclipse/jetty/http/HttpFields;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V
    .locals 1

    .prologue
    .line 500
    iput-object p1, p0, Lorg/eclipse/jetty/http/d;->c:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/d;->b:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iget-object v0, p0, Lorg/eclipse/jetty/http/d;->b:Lorg/eclipse/jetty/http/HttpFields$Field;

    iput-object v0, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    iget-object v1, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-static {v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/d;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
