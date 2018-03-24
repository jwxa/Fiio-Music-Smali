.class public Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownLoadingListAdapter.java"


# instance fields
.field public btn_download_list_item_delete:Landroid/widget/Button;

.field public btn_download_list_item_pause:Landroid/widget/Button;

.field public pb_download_list_item:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/fiio/music/adapter/DownLoadingListAdapter;

.field public tv_download_list_item_bottom:Landroid/widget/TextView;

.field public tv_download_list_item_number:Landroid/widget/TextView;

.field public tv_download_list_item_top:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/fiio/music/adapter/DownLoadingListAdapter;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadingListAdapter$ViewHolder;->this$0:Lcom/fiio/music/adapter/DownLoadingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
