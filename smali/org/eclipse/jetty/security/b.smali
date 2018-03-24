.class final Lorg/eclipse/jetty/security/b;
.super Ljava/lang/Object;
.source "PropertyUserStore.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$BulkListener;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/security/PropertyUserStore;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/security/b;->a:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filesChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/b;->a:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v1}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$000(Lorg/eclipse/jetty/security/PropertyUserStore;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/eclipse/jetty/security/b;->a:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v0}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$100(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "PropertyUserStore$Scanner"

    return-object v0
.end method
