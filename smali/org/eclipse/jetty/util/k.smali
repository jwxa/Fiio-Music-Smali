.class final Lorg/eclipse/jetty/util/k;
.super Ljava/util/TimerTask;
.source "RolloverFileOutputStream.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/eclipse/jetty/util/k;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;B)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/k;-><init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/k;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->access$100(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/util/k;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->access$200(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
