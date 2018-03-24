.class final Lcom/fiio/music/fragment/f;
.super Ljava/lang/Object;
.source "DlnaFragment.java"

# interfaces
.implements Lcom/fiio/music/service/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/DlnaFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/DlnaFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/f;->a:Lcom/fiio/music/fragment/DlnaFragment;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fiio/music/fragment/f;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$0(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/fragment/i;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/f;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, v1, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/i;->a(Lcom/fiio/music/service/h;)V

    .line 350
    return-void
.end method
