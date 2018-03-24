.class final Lcom/fiio/music/adapter/aq;
.super Ljava/lang/Object;
.source "SongItemWebAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/SongItemWebAdapter;

.field private final synthetic b:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/SongItemWebAdapter;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/aq;->a:Lcom/fiio/music/adapter/SongItemWebAdapter;

    iput-object p2, p0, Lcom/fiio/music/adapter/aq;->b:Lcom/fiio/music/entity/Song;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/adapter/aq;->a:Lcom/fiio/music/adapter/SongItemWebAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemWebAdapter;->access$0(Lcom/fiio/music/adapter/SongItemWebAdapter;)Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fiio/music/adapter/aq;->a:Lcom/fiio/music/adapter/SongItemWebAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/SongItemWebAdapter;->access$0(Lcom/fiio/music/adapter/SongItemWebAdapter;)Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/aq;->b:Lcom/fiio/music/entity/Song;

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;->onDownLoad(Lcom/fiio/music/entity/Song;)V

    .line 101
    :cond_0
    return-void
.end method
