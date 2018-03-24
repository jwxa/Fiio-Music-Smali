.class final Lcom/fiio/music/adapter/c;
.super Ljava/lang/Object;
.source "DownLoadingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

.field private final synthetic b:Lcom/fiio/music/entity/DownLoadInfo;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/DownLoadingListAdapter;Lcom/fiio/music/entity/DownLoadInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/c;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    iput-object p2, p0, Lcom/fiio/music/adapter/c;->b:Lcom/fiio/music/entity/DownLoadInfo;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fiio/music/adapter/c;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DownLoadingListAdapter;->access$0(Lcom/fiio/music/adapter/DownLoadingListAdapter;)Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fiio/music/adapter/c;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DownLoadingListAdapter;->access$0(Lcom/fiio/music/adapter/DownLoadingListAdapter;)Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/c;->b:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/c;->b:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v2}, Lcom/fiio/music/entity/DownLoadInfo;->getState()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;->onPause(Ljava/lang/String;I)V

    .line 141
    :cond_0
    return-void
.end method
