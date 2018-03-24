.class final Lcom/fiio/music/activity/aa;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/aa;->a:Lcom/fiio/music/activity/EqActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/fiio/music/activity/aa;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/aa;->a:Lcom/fiio/music/activity/EqActivity;

    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method
