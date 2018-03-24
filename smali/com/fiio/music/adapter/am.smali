.class final Lcom/fiio/music/adapter/am;
.super Ljava/lang/Object;
.source "SongItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ak;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ak;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/am;->a:Lcom/fiio/music/adapter/ak;

    iput-object p2, p0, Lcom/fiio/music/adapter/am;->b:Lcom/fiio/music/custom/f;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/fiio/music/adapter/am;->a:Lcom/fiio/music/adapter/ak;

    iget-object v0, v0, Lcom/fiio/music/adapter/ak;->a:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 703
    iget-object v0, p0, Lcom/fiio/music/adapter/am;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 704
    return-void
.end method
