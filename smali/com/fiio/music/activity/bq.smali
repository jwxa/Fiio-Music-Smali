.class final Lcom/fiio/music/activity/bq;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Lcom/fiio/music/custom/e;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 1636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$5(Lcom/fiio/music/activity/ListMainActivity;)[Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$6(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1640
    iget-object v0, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/ListMainActivity;->access$7(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1641
    iget-object v0, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$5(Lcom/fiio/music/activity/ListMainActivity;)[Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/bq;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$6(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v1

    aget-object v0, v0, v1

    .line 1642
    const v1, 0x7f0204c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1643
    return-void
.end method
