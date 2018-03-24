.class final Lcom/fiio/music/adapter/b;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/b;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    iput-object p2, p0, Lcom/fiio/music/adapter/b;->b:Lcom/fiio/music/entity/DownLoadInfo;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fiio/music/adapter/b;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DownLoadingListAdapter;->access$0(Lcom/fiio/music/adapter/DownLoadingListAdapter;)Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fiio/music/adapter/b;->a:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DownLoadingListAdapter;->access$0(Lcom/fiio/music/adapter/DownLoadingListAdapter;)Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/b;->b:Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/entity/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/DownLoadingListAdapter$ItemListener;->onDelete(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
