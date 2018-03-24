.class final Lcom/fiio/music/activity/an;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/am;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/am;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/an;->a:Lcom/fiio/music/activity/am;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fiio/music/activity/an;->a:Lcom/fiio/music/activity/am;

    iget-object v0, v0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v0}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/an;->a:Lcom/fiio/music/activity/am;

    iget-object v1, v1, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v1}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v1

    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 462
    const/4 v0, 0x1

    return v0
.end method
