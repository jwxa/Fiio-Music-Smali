.class final Lcom/fiio/music/widget/v;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/VolumeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/v;->a:Lcom/fiio/music/widget/VolumeDialog;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fiio/music/widget/v;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v0, p2, p3}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
