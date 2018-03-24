.class final Lcom/fiio/music/adapter/a;
.super Ljava/lang/Object;
.source "DownLoadListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/DownLoadListAdapter;

.field private final synthetic b:Lcom/fiio/music/entity/Song;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/DownLoadListAdapter;Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/a;->a:Lcom/fiio/music/adapter/DownLoadListAdapter;

    iput-object p2, p0, Lcom/fiio/music/adapter/a;->b:Lcom/fiio/music/entity/Song;

    iput p3, p0, Lcom/fiio/music/adapter/a;->c:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/adapter/a;->a:Lcom/fiio/music/adapter/DownLoadListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DownLoadListAdapter;->access$0(Lcom/fiio/music/adapter/DownLoadListAdapter;)Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/a;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/adapter/a;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/fiio/music/adapter/a;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;->onDelete(ILjava/lang/String;I)V

    .line 110
    return-void
.end method
