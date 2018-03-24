.class final Lcom/fiio/music/util/u;
.super Ljava/lang/Object;
.source "FiioPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/u;->a:Lcom/fiio/music/util/FiioPopupWindow;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 351
    const-string v0, "zxy"

    const-string v1, "into here onkeydown111"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/fiio/music/util/u;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->g(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/fiio/music/util/u;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->g(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/y;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/fiio/music/util/y;->a(ILandroid/view/KeyEvent;)Z

    .line 355
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
