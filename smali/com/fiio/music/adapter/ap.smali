.class final Lcom/fiio/music/adapter/ap;
.super Ljava/lang/Object;
.source "SongItemRFAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SongItemRFAdapter;

.field private final synthetic b:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SongItemRFAdapter;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ap;->a:Lcom/fiio/music/adapter/SongItemRFAdapter;

    iput-object p2, p0, Lcom/fiio/music/adapter/ap;->b:Lcom/fiio/music/entity/Song;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fiio/music/adapter/ap;->a:Lcom/fiio/music/adapter/SongItemRFAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->access$0(Lcom/fiio/music/adapter/SongItemRFAdapter;)Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/fiio/music/adapter/ap;->a:Lcom/fiio/music/adapter/SongItemRFAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->access$0(Lcom/fiio/music/adapter/SongItemRFAdapter;)Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/ap;->b:Lcom/fiio/music/entity/Song;

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;->onDownLoad(Lcom/fiio/music/entity/Song;)V

    .line 242
    :cond_0
    return-void
.end method
