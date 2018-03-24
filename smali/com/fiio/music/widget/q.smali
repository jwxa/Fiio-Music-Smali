.class final Lcom/fiio/music/widget/q;
.super Ljava/lang/Object;
.source "StickyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/p;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/p;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/q;->a:Lcom/fiio/music/widget/p;

    iput p2, p0, Lcom/fiio/music/widget/q;->b:I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fiio/music/widget/q;->a:Lcom/fiio/music/widget/p;

    invoke-static {v0}, Lcom/fiio/music/widget/p;->a(Lcom/fiio/music/widget/p;)Lcom/fiio/music/widget/StickyLayout;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/widget/q;->b:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/StickyLayout;->setHeaderHeight(I)V

    .line 243
    return-void
.end method
