.class final Lorg/eclipse/jetty/util/l;
.super Ljava/util/TimerTask;
.source "Scanner.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/Scanner;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/Scanner;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lorg/eclipse/jetty/util/l;->a:Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/util/l;->a:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    return-void
.end method
