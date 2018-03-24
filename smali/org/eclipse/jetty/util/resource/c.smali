.class final Lorg/eclipse/jetty/util/resource/c;
.super Ljava/io/FilterInputStream;
.source "JarResource.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/resource/JarResource;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/resource/JarResource;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/c;->a:Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->getClosedStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/c;->in:Ljava/io/InputStream;

    return-void
.end method
