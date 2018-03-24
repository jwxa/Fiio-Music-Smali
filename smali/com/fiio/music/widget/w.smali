.class final Lcom/fiio/music/widget/w;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/VolumeDialog;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/VolumeDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/w;->a:Lcom/fiio/music/widget/VolumeDialog;

    iput p2, p0, Lcom/fiio/music/widget/w;->b:I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fiio/music/widget/w;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v0}, Lcom/fiio/music/widget/VolumeDialog;->j(Lcom/fiio/music/widget/VolumeDialog;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/fiio/music/widget/w;->b:I

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/fiio/music/widget/w;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->b()V

    .line 193
    iget-object v0, p0, Lcom/fiio/music/widget/w;->a:Lcom/fiio/music/widget/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;Z)V

    .line 195
    :cond_0
    return-void
.end method
