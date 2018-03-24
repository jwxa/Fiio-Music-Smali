.class final Lorg/apache/http/impl/client/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# instance fields
.field final synthetic a:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/http/impl/client/e;->a:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    .line 89
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/e;->a:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 96
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 97
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/e;->a:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 102
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/e;->a:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 108
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method
