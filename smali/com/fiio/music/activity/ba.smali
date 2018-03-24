.class final Lcom/fiio/music/activity/ba;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ba;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/fiio/music/activity/ba;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$51(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/slidemenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->a()V

    .line 1825
    return-void
.end method
