.class final Lcom/fiio/music/activity/do;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/c;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const v2, 0x7f020508

    const/16 v3, 0x2d

    .line 1083
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1084
    const v0, 0x7f020507

    .line 1085
    iget-object v1, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2, v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$48(Lcom/fiio/music/activity/MyMusicListActivity;I)I

    move-result v2

    .line 1084
    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1, v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$48(Lcom/fiio/music/activity/MyMusicListActivity;I)I

    move-result v1

    .line 1087
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1, v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$48(Lcom/fiio/music/activity/MyMusicListActivity;I)I

    move-result v1

    .line 1090
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/do;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1, v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$48(Lcom/fiio/music/activity/MyMusicListActivity;I)I

    move-result v1

    .line 1093
    invoke-static {p1, v2, v0, v1}, Lcom/fiio/music/util/cq;->a(Lcom/fiio/music/swipemenulistview/a;ILandroid/content/Context;I)V

    goto :goto_0
.end method
