.class public final Lcom/fiio/music/util/cz;
.super Ljava/lang/Object;
.source "VolumDialogKeyDown.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/fiio/music/widget/VolumeDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fiio/music/util/cz;->a:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v0, p1}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    .line 19
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    const/16 v1, 0x19

    if-ne p2, v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 24
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 25
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 26
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    .line 37
    :goto_0
    return v0

    .line 28
    :cond_0
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 30
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 31
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 32
    iget-object v1, p0, Lcom/fiio/music/util/cz;->b:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
