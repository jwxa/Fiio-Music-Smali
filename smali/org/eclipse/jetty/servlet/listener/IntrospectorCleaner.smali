.class public Lorg/eclipse/jetty/servlet/listener/IntrospectorCleaner;
.super Ljava/lang/Object;
.source "IntrospectorCleaner.java"

# interfaces
.implements Lc/c/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contextDestroyed(Lc/c/v;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Ljava/beans/Introspector;->flushCaches()V

    .line 43
    return-void
.end method

.method public contextInitialized(Lc/c/v;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
