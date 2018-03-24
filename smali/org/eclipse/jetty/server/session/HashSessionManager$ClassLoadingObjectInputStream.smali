.class public Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "HashSessionManager.java"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 612
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 613
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 606
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 607
    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
