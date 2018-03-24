.class final Lcom/fiio/music/a/b;
.super Ljava/lang/Object;
.source "CustomCrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/a/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fiio/music/a/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/a/b;->a:Lcom/fiio/music/a/a;

    iput-object p2, p0, Lcom/fiio/music/a/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/fiio/music/a/b;->c:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 104
    iget-object v0, p0, Lcom/fiio/music/a/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/fiio/music/a/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 106
    return-void
.end method
