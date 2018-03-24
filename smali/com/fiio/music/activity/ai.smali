.class final Lcom/fiio/music/activity/ai;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ah;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ah;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ai;->a:Lcom/fiio/music/activity/ah;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/fiio/music/activity/ai;->a:Lcom/fiio/music/activity/ah;

    invoke-static {v0}, Lcom/fiio/music/activity/ah;->a(Lcom/fiio/music/activity/ah;)Lcom/fiio/music/activity/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/ab;->a(Lcom/fiio/music/activity/ab;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ai;->a:Lcom/fiio/music/activity/ah;

    invoke-static {v1}, Lcom/fiio/music/activity/ah;->a(Lcom/fiio/music/activity/ah;)Lcom/fiio/music/activity/ab;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/activity/ab;->a(Lcom/fiio/music/activity/ab;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v1

    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 383
    const/4 v0, 0x1

    return v0
.end method
