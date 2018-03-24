.class final Lcom/fiio/music/adapter/ar;
.super Ljava/lang/Object;
.source "TestExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/TestExpandableListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ar;->a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    iput p2, p0, Lcom/fiio/music/adapter/ar;->b:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/adapter/ar;->a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->access$0(Lcom/fiio/music/adapter/TestExpandableListAdapter;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/ar;->b:I

    aget-object v0, v0, v1

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fiio/music/adapter/ar;->a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->access$1(Lcom/fiio/music/adapter/TestExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->startMyMusicListActivity()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ar;->a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->access$1(Lcom/fiio/music/adapter/TestExpandableListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/ar;->a:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->access$0(Lcom/fiio/music/adapter/TestExpandableListAdapter;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/adapter/ar;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startRecentListActivity(Ljava/lang/String;)V

    goto :goto_0
.end method
