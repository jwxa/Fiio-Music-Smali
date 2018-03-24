.class final Lcom/fiio/music/activity/gb;
.super Ljava/lang/Object;
.source "RecentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/RecentListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/RecentListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gb;->a:Lcom/fiio/music/activity/RecentListActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fiio/music/activity/gb;->a:Lcom/fiio/music/activity/RecentListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/RecentListActivity;->finish()V

    .line 112
    return-void
.end method
